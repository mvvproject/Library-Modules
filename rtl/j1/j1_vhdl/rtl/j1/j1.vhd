library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use IEEE.STD_LOGIC_ARITH.all;

entity j1 is
port (
	sys_clk_i	: in  std_logic;
	sys_rst_i	: in  std_logic;
	io_data_i	: in  std_logic_vector(15 downto 0);
	io_rd_o		: out std_logic;
	io_wr_o		: out std_logic;
	io_addr_o	: out std_logic_vector(15 downto 0);
	io_data_o	: out std_logic_vector(15 downto 0)
	);
end entity j1;

architecture rtl of j1 is
	signal insn		: std_logic_vector(15 downto 0);
	signal ramrd		: std_logic_vector(15 downto 0);
	signal dsp		: std_logic_vector(4 downto 0);		-- Data stack pointer
	signal dsp_sig		: std_logic_vector(4 downto 0);
	signal st0		: std_logic_vector(15 downto 0);	-- Return stack pointer
	signal st0_sig		: std_logic_vector(15 downto 0);
	signal dstkW_sig	: std_logic;				-- D stack write
	signal pc		: std_logic_vector(12 downto 0);
	signal pc_sig		: std_logic_vector(12 downto 0);
	signal rsp		: std_logic_vector(4 downto 0);
	signal rsp_sig		: std_logic_vector(4 downto 0);
	signal rstkW_sig	: std_logic;				-- R stack write
	signal rstkD_sig	: std_logic_vector(15 downto 0);
	signal ramWE_sig 	: std_logic;				-- RAM write enable
	signal pc_plus_1	: std_logic_vector(15 downto 0);
	signal st1		: std_logic_vector(15 downto 0);
	signal rst0		: std_logic_vector(15 downto 0);
	signal st0sel		: std_logic_vector(3 downto 0);
	signal is_alu		: std_logic;
	signal is_lit		: std_logic;
	signal dd		: std_logic_vector(1 downto 0);		-- D stack delta
	signal rd		: std_logic_vector(1 downto 0);		-- R stack delta
	signal en		: std_logic;
	
begin

	ram: entity work.j1ram
	port map (
		enable_a	=> '1',
		enable_b	=> '1',
		clock_a		=> sys_clk_i,
		clock_b		=> sys_clk_i,
		wren_a	 	=> '0',
		wren_b	 	=> ramWE_sig,
		address_a	=> pc_sig,
		address_b	=> st0_sig(12 downto 0),
		data_a	 	=> (others => '0'),
		data_b	 	=> st1,
		q_a	 	=> insn,
		q_b	 	=> ramrd);

	r: entity work.j1reg
	port map (
		sys_clk_i	=> sys_clk_i,
		dstkW_sig	=> dstkW_sig,
		rstkW_sig	=> rstkW_sig,
		dsp_sig		=> dsp_sig,
		dsp		=> dsp,
		rsp_sig		=> rsp_sig,
		rsp		=> rsp,
		st0		=> st0,
		rstkD_sig	=> rstkD_sig,
		rst0		=> rst0,
		st1		=> st1);
		
	pc_plus_1 <= ("000" & pc) + 1;
	en <= not(st0_sig(15) or st0_sig(14));

	-- st0sel is the ALU operation.  For branch and call the operation
	-- is T, for 0branch it is N.  For ALU ops it is loaded from the instruction
	-- field.
	process (insn)
	begin
		case insn(14 downto 13) is
			when "00" => st0sel <= "0000";			-- ubranch
			when "10" => st0sel <= "0000";			-- call
			when "01" => st0sel <= "0001";			-- 0branch
			when "11" => st0sel <= insn(11 downto 8);	-- ALU
			when others => st0sel <= "XXXX";
		end case;
	end process;

	-- Compute the new value of T.
	compute: process (insn, st0sel, st0, st1, rst0, io_data_i, ramrd, rsp, dsp)
	begin
		if insn(15) = '1' then
			st0_sig <= '0' & insn(14 downto 0);
		else
			case st0sel is
				-- T
				when "0000" => st0_sig <= st0;
				-- N
				when "0001" => st0_sig <= st1;
				-- T + N
				when "0010" => st0_sig <= st0 + st1;
				-- T and N
				when "0011" => st0_sig <= st0 and st1;
				-- T or N
				when "0100" => st0_sig <= st0 or st1;
				-- T xor N
				when "0101" => st0_sig <= st0 xor st1;	
				-- not T
				when "0110" => st0_sig <= not st0;
				-- T = N ?
				when "0111" =>
					if st1 = st0 then
						st0_sig <= (others => '1');
					else
						st0_sig <= (others => '0');
					end if;
				-- T < N ?
				when "1000" =>
					if signed(st1) < signed(st0) then
						st0_sig <= (others => '1');
					else
						st0_sig <= (others => '0');
					end if;
				-- N rshift T
				when "1001" =>
					case st0(3 downto 0) is
						when "0000" => st0_sig <= st1(15 downto 0);
						when "0001" => st0_sig <= st1( 0)          & st1(15 downto  1);
						when "0010" => st0_sig <= st1( 1 downto 0) & st1(15 downto  2);
						when "0011" => st0_sig <= st1( 2 downto 0) & st1(15 downto  3);
						when "0100" => st0_sig <= st1( 3 downto 0) & st1(15 downto  4);
						when "0101" => st0_sig <= st1( 4 downto 0) & st1(15 downto  5);
						when "0110" => st0_sig <= st1( 5 downto 0) & st1(15 downto  6);
						when "0111" => st0_sig <= st1( 6 downto 0) & st1(15 downto  7);
						when "1000" => st0_sig <= st1( 7 downto 0) & st1(15 downto  8);
						when "1001" => st0_sig <= st1( 8 downto 0) & st1(15 downto  9);
						when "1010" => st0_sig <= st1( 9 downto 0) & st1(15 downto 10);
						when "1011" => st0_sig <= st1(10 downto 0) & st1(15 downto 11);
						when "1100" => st0_sig <= st1(11 downto 0) & st1(15 downto 12);
						when "1101" => st0_sig <= st1(12 downto 0) & st1(15 downto 13);
						when "1110" => st0_sig <= st1(13 downto 0) & st1(15 downto 14);
						when "1111" => st0_sig <= st1(14 downto 0) & st1(15);
						when others => null;
					end case;
				-- T - 1	
				when "1010" => st0_sig <= st0 - 1;
				-- R
				when "1011" => st0_sig <= rst0;
				-- [T]
				when "1100" =>
					if st0(15 downto 14) /= "00" then
						st0_sig <= io_data_i;
					else
						st0_sig <= ramrd;
					end if;
				-- N lshift T
				when "1101" =>
					case st0(3 downto 0) is
						when "0000" => st0_sig <= st1(15 downto 0);
						when "0001" => st0_sig <= st1(14 downto 0) & st1(15);
						when "0010" => st0_sig <= st1(13 downto 0) & st1(15 downto 14);
						when "0011" => st0_sig <= st1(12 downto 0) & st1(15 downto 13);
						when "0100" => st0_sig <= st1(11 downto 0) & st1(15 downto 12);
						when "0101" => st0_sig <= st1(10 downto 0) & st1(15 downto 11);
						when "0110" => st0_sig <= st1( 9 downto 0) & st1(15 downto 10);
						when "0111" => st0_sig <= st1( 8 downto 0) & st1(15 downto  9);
						when "1000" => st0_sig <= st1( 7 downto 0) & st1(15 downto  8);
						when "1001" => st0_sig <= st1( 6 downto 0) & st1(15 downto  7);
						when "1010" => st0_sig <= st1( 5 downto 0) & st1(15 downto  6);
						when "1011" => st0_sig <= st1( 4 downto 0) & st1(15 downto  5);
						when "1100" => st0_sig <= st1( 3 downto 0) & st1(15 downto  4);
						when "1101" => st0_sig <= st1( 2 downto 0) & st1(15 downto  3);
						when "1110" => st0_sig <= st1( 1 downto 0) & st1(15 downto  2);
						when "1111" => st0_sig <= st1( 0)          & st1(15 downto  1);
						when others => null;
					end case;
				-- depth
				when "1110" => st0_sig <= ("000" & (rsp & "000" & dsp));
				-- (T < N) ?	
				when "1111" =>
					if st1 < st0 then
						st0_sig <= (others => '1');
					else
						st0_sig <= (others => '0');
					end if;
				when others => st0_sig <= (others => 'X');
			end case;
		end if;
	end process;
	
	is_alu	  <= not(insn(15)) and insn(14) and insn(13);
	is_lit	  <= insn(15);
	
	io_rd_o	  <= is_alu and (insn(11) and insn(10) and not(insn(9)) and not(insn(8)));
	io_wr_o	  <= is_alu and insn(5) and (st0_sig(15) or st0_sig(15));
	io_addr_o <= st0;
	io_data_o <= st1;
	
	ramWE_sig <= is_alu and insn(5) and en;
	dstkW_sig <= is_lit or (is_alu and insn(7));
	
	dd        <= insn(1 downto 0);	-- D stack delta
	rd        <= insn(3 downto 2);	-- R stack delta
	
	process (is_lit, dsp, rsp, is_alu, dd, rd, insn, st0, pc_plus_1, pc_sig)
	begin
		if is_lit = '1' then	-- literal
			dsp_sig   <= dsp + 1;
			rsp_sig   <= rsp;
			rstkW_sig <= '0';
			rstkD_sig <= ("000" & pc_sig);
		elsif is_alu = '1' then
			dsp_sig   <= dsp + (dd(1) & dd(1) & dd(1) & dd);
			rsp_sig   <= rsp + (rd(1) & rd(1) & rd(1) & rd);
			rstkW_sig <= insn(6);
			rstkD_sig <= st0;	-- jump/call
		else
			-- predicated jump is like DROP
			if insn(15 downto 13) = "001" then
				dsp_sig <= dsp - 1;
			else
				dsp_sig <= dsp;
			end if;
			if insn(15 downto 13) = "010" then	-- call
				rsp_sig   <= rsp + 1;
				rstkW_sig <= '1';
				rstkD_sig <= (pc_plus_1(14 downto 0) & '0');
			else
				rsp_sig   <= rsp;
				rstkW_sig <= '0';
				rstkD_sig <= ("000" & pc_sig);
			end if;
		end if;
	end process;
	
	process (sys_rst_i, pc, insn, st0, is_alu, rst0, pc_plus_1)
	begin
		if sys_rst_i = '1' then
			pc_sig <= pc;
		elsif (insn(15 downto 13) = "000") or ((insn(15 downto 13) = "001") and (st0 = 0)) or (insn(15 downto 13) = "010") then
			pc_sig <= insn(12 downto 0);
		elsif (is_alu and insn(12)) = '1' then
			pc_sig <= rst0(13 downto 1);
		else
			pc_sig <= pc_plus_1(12 downto 0);
		end if;
	end process;
	
	process (sys_clk_i)
	begin
		if sys_clk_i'event and sys_clk_i = '1' then
			if sys_rst_i = '1' then
				pc  <= (others => '0');
				dsp <= (others => '0');
				st0 <= (others => '0');
				rsp <= (others => '0');
			else
				dsp <= dsp_sig;
				pc  <= pc_sig;
				st0 <= st0_sig;
				rsp <= rsp_sig;
			end if;
		end if;
	end process;
	
end architecture rtl; -- j1