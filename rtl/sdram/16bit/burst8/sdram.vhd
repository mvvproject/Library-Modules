-------------------------------------------------------------------[10.07.2015]
-- SDRAM Controller
-------------------------------------------------------------------------------
-- Engineer: MVV

-- 24.02.2015	SDRAM 4 Meg x 16 x 4 banks
-- 07.07.2015	Добавлен Burst 8
-------------------------------------------------------------------------------

-- CLK		= 125MHz	= 8ns
-- WR		= 15T		= 120ns
-- RD		= 14T		= 112ns
-- RFSH		= 9T		= 72ns

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sdram is
port (
	CLK_I		: in std_logic;				-- 125МГц
	RST_I		: in std_logic;				-- 1 = активный
	-- Channel
	WE_I		: in std_logic;				-- 1 = операция записи, 0 = чтения
	DM_I		: in std_logic_vector(1 downto 0);	-- маска данных при записи (1 = запись запрещена, 0 = запись разрешена)
	REQ_I	 	: in std_logic;				-- 1 = запрос операции, 0 = нет запроса
	ADDR_I		: in std_logic_vector(24 downto 0);	-- адрес в SDRAM
	DATA_I		: in std_logic_vector(15 downto 0);	-- записываемые данные
	DATA_O	 	: out std_logic_vector(15 downto 0);	-- прочитанные данные
	ACK_O	 	: out std_logic;			-- 1 = подтверждение запроса , 0 = ожидание запроса
	WE_O		: out std_logic;			-- 1 = разрешение записи, 0 = запрет записи
	RE_O		: out std_logic;			-- 1 = разрешение чтения, 0 = запрет чтения
	-- SDRAM Pin
	CLK		: out std_logic;
	RAS_N		: out std_logic;
	CAS_N		: out std_logic;
	WE_N		: out std_logic;
	DQM		: out std_logic_vector(1 downto 0);
	BA		: out std_logic_vector(1 downto 0);
	MA		: out std_logic_vector(12 downto 0);
	DQ		: inout std_logic_vector(15 downto 0) );
end sdram;

architecture rtl of sdram is
	signal state		: unsigned(5 downto 0) := "000000";
	signal rfsh_cnt		: unsigned(9 downto 0) := "0000000000";
	signal rfsh_req		: std_logic := '0';
	signal ack		: std_logic;
	
	-- SD-RAM control signals
	signal sdr_cmd		: std_logic_vector(2 downto 0);
	signal sdr_ba		: std_logic_vector(1 downto 0);
	signal sdr_dqm		: std_logic_vector(1 downto 0);
	signal sdr_a		: std_logic_vector(12 downto 0);
	signal sdr_dq		: std_logic_vector(15 downto 0);

	constant SdrCmd_xx	: std_logic_vector(2 downto 0) := "111"; -- no operation
	constant SdrCmd_ac	: std_logic_vector(2 downto 0) := "011"; -- activate
	constant SdrCmd_rd	: std_logic_vector(2 downto 0) := "101"; -- read
	constant SdrCmd_wr	: std_logic_vector(2 downto 0) := "100"; -- write		
	constant SdrCmd_pr	: std_logic_vector(2 downto 0) := "010"; -- precharge all
	constant SdrCmd_re	: std_logic_vector(2 downto 0) := "001"; -- refresh
	constant SdrCmd_ms	: std_logic_vector(2 downto 0) := "000"; -- mode regiser set

-- Init-------------------------------------------------------------------------------------  Idle----  Write------------------------------------  Read-------------------------------------  Refresh----------------
-- 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C 1D  1E        1F 20 21 22 23 24 25 26 27 28 29 2A 2B 2C  2D 2E 2F 30 31 32 33 34 35 36 37 38 39 3A  16 17 18 19 1A 1B 1C 1D
-- PR xx xx RE xx xx xx xx xx xx xx xx RE xx xx xx xx xx xx xx xx MS xx xx xx xx xx xx xx xx  xx/AC/RE  xx xx WR xx xx xx xx xx xx xx xx xx xx xx  xx xx RD xx xx xx xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx
--                                                                                                            B0 B1 B2 B3 B4 B5 B6 B7                                B0 B1 B2 B3 B4 B5 B6 B7
begin
	process (RST_I, CLK_I, REQ_I, WE_I)
	begin
		if (RST_I = '1') then
			sdr_cmd <= (others => '1');
			sdr_dqm <= (others => '1');
			sdr_dq  <= (others => 'Z');
			sdr_ba  <= (others => '1');
			sdr_a   <= (others => '1');
			ack	<= '0';
			state   <= (others => '0');
		elsif (CLK_I'event and CLK_I = '0') then
			case state is
				-- Init
				when "000000" =>
					sdr_cmd <= SdrCmd_pr;		-- PRECHARGE
					sdr_dqm <= (others => '1');
					sdr_dq  <= (others => 'Z');
					sdr_ba  <= (others => '0');
					sdr_a   <= (others => '1');
					state   <= state + 1;
				when "000011" | "001100" =>	 	-- s03 s0C
					sdr_cmd <= SdrCmd_re;		-- REFRESH
					state   <= state + 1;
				when "010101" =>			-- s15
					sdr_cmd <= SdrCmd_ms;		-- LOAD MODE REGISTER
					sdr_a   <= "000" & "0" & "00" & "011" & "0" & "011";	-- WB=0 programmed burst length, CL=3, OP MODE=00 BT=0 sequential, BURST LENGTH=8
					state   <= state + 1;
				-- Idle
				when "011110" =>			-- s1E
					sdr_cmd <= SdrCmd_xx;		-- NOP
					sdr_dq  <= (others => 'Z');
					
					if (rfsh_req = '1') then
						rfsh_req <= '0';
						sdr_cmd  <= SdrCmd_re;	-- REFRESH
						state    <= "010110";	-- s16

					elsif (REQ_I = '1' and WE_I = '1') then
						ack	<= '1';
						sdr_cmd <= SdrCmd_ac;	-- ACTIVE
						sdr_ba  <= ADDR_I(24 downto 23);
						sdr_a   <= ADDR_I(22 downto 10);
						state   <= state + 1;	-- s1F Write

					elsif (REQ_I = '1' and WE_I = '0') then
						ack	<= '1';
						sdr_cmd <= SdrCmd_ac;	-- ACTIVE
						sdr_ba  <= ADDR_I(24 downto 23);
						sdr_a   <= ADDR_I(22 downto 10);					 
						state   <= "101101";	-- s2D Read
					end if;
					
				-- a21 a20 a19 a18 a17 a16 a15 a14 a13 a12 a11 a10 a9 a8 a7 a6 a5 a4 a3 a2 a1 a0 0 0
				-- BA1 BA0 ROW--------------------------------------------- COLUMN------------------	
				
				-- Write - with auto precharge
				when "100001" =>			-- s21
					sdr_cmd <= SdrCmd_wr;		-- WRITE
					sdr_a   <= "0010" & ADDR_I(9 downto 1);	--  A10 = 1 enable auto precharge; A8..0 = column
					sdr_dq  <= DATA_I;
					sdr_dqm <= DM_I;
					state   <= state + 1;
				when "100010" | "100011" | "100100" | "100101" | "100110" | "100111" | "101000" =>
					sdr_dq  <= DATA_I;
					sdr_dqm <= DM_I;
					sdr_cmd <= SdrCmd_xx;		-- NOP
					state   <= state + 1;
				when "101100" =>			-- s2C
					ack	<= '0';
					sdr_dq  <= (others => 'Z');
					sdr_cmd <= SdrCmd_xx;		-- NOP
					state   <= "011110";		-- s1E

				-- Read - with auto precharge
				when "101111" =>			-- s2F
					sdr_cmd <= SdrCmd_rd;		-- READ
					sdr_a   <= "0010" & ADDR_I(9 downto 1);	--  A10 = 1 enable auto precharge; A8..0 = column
					sdr_dqm <= (others => '0');
					state   <= state + 1;
				when "111010" =>			-- s3A
					ack	<= '0';
					sdr_dq  <= (others => 'Z');
					sdr_cmd <= SdrCmd_xx;		-- NOP
					state   <= "011110";		-- s1E

				when others =>
					sdr_dq  <= (others => 'Z');
					sdr_cmd <= SdrCmd_xx;		-- NOP
					state   <= state + 1;
			end case;

			-- Providing a distributed AUTO REFRESH command every 7.81us
			if (rfsh_cnt = "1111010000") then		-- (CLK MHz * 1000 * 64 / 8192) = 976 %11_1101_0000
				rfsh_cnt <= (others => '0');
				rfsh_req <= '1';
			else
				rfsh_cnt <= rfsh_cnt + 1;
			end if;
		
		end if;
	end process;
	
	DATA_O	<= DQ;
	WE_O	<= '1' when (state > "110010") else '0';
	RE_O	<= '1' when (state > "100000" and state < "101001" ) else '0';
	ACK_O	<= ack;
	
	CLK	<= CLK_I;
	RAS_N	<= sdr_cmd(2);
	CAS_N	<= sdr_cmd(1);
	WE_N	<= sdr_cmd(0);
	DQM	<= sdr_dqm;
	BA	<= sdr_ba;
	MA	<= sdr_a;
	DQ	<= sdr_dq;

end rtl;
	