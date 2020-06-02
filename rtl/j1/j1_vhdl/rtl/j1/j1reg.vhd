-------------------------------------------------------------------------------
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use ieee.numeric_std.all;
	
entity j1reg is
port (
	sys_clk_i	: in  std_logic;
	dstkW_sig	: in  std_logic;
	rstkW_sig	: in  std_logic;
	dsp_sig		: in  std_logic_vector(4 downto 0);
	dsp		: in  std_logic_vector(4 downto 0);
	rsp_sig		: in  std_logic_vector(4 downto 0);
	rsp		: in  std_logic_vector(4 downto 0);
	st0		: in  std_logic_vector(15 downto 0);
	rstkD_sig	: in  std_logic_vector(15 downto 0);
	rst0		: out std_logic_vector(15 downto 0);
	st1		: out std_logic_vector(15 downto 0)
	);
end entity j1reg;

architecture rtl of j1reg is

	-- The D and R stacks
	signal d00,d01,d02,d03	: std_logic_vector(15 downto 0);
	signal d04,d05,d06,d07	: std_logic_vector(15 downto 0);
	signal d08,d09,d0a,d0b	: std_logic_vector(15 downto 0);
	signal d0c,d0d,d0e,d0f	: std_logic_vector(15 downto 0);
	signal d10,d11,d12,d13	: std_logic_vector(15 downto 0);
	signal d14,d15,d16,d17	: std_logic_vector(15 downto 0);
	signal d18,d19,d1a,d1b	: std_logic_vector(15 downto 0);
	signal d1c,d1d,d1e,d1f	: std_logic_vector(15 downto 0);
	
	signal r00,r01,r02,r03	: std_logic_vector(15 downto 0);
	signal r04,r05,r06,r07	: std_logic_vector(15 downto 0);
	signal r08,r09,r0a,r0b	: std_logic_vector(15 downto 0);
	signal r0c,r0d,r0e,r0f	: std_logic_vector(15 downto 0);
	signal r10,r11,r12,r13	: std_logic_vector(15 downto 0);
	signal r14,r15,r16,r17	: std_logic_vector(15 downto 0);
	signal r18,r19,r1a,r1b	: std_logic_vector(15 downto 0);
	signal r1c,r1d,r1e,r1f	: std_logic_vector(15 downto 0);
	signal ss 		: std_logic_vector(5 downto 0);
	signal rr 		: std_logic_vector(5 downto 0);
	
begin
	ss <= dstkW_sig & dsp_sig;
	rr <= rstkW_sig & rsp_sig;


	process (sys_clk_i,ss,d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,d0a,d0b,d0c,d0d,d0e,d0f,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d1a,d1b,d1c,d1d,d1e,d1f)
	begin
		if sys_clk_i'event and sys_clk_i = '1' then
			if ss = "100000" then d00 <= st0; end if;
			if ss = "100001" then d01 <= st0; end if;
			if ss = "100010" then d02 <= st0; end if;
			if ss = "100011" then d03 <= st0; end if;
			if ss = "100100" then d04 <= st0; end if;
			if ss = "100101" then d05 <= st0; end if;
			if ss = "100110" then d06 <= st0; end if;
			if ss = "100111" then d07 <= st0; end if;
			if ss = "101000" then d08 <= st0; end if;
			if ss = "101001" then d09 <= st0; end if;
			if ss = "101010" then d0a <= st0; end if;
			if ss = "101011" then d0b <= st0; end if;
			if ss = "101100" then d0c <= st0; end if;
			if ss = "101101" then d0d <= st0; end if;
			if ss = "101110" then d0e <= st0; end if;
			if ss = "101111" then d0f <= st0; end if;
			if ss = "110000" then d10 <= st0; end if;
			if ss = "110001" then d11 <= st0; end if;
			if ss = "110010" then d12 <= st0; end if;
			if ss = "110011" then d13 <= st0; end if;
			if ss = "110100" then d14 <= st0; end if;
			if ss = "110101" then d15 <= st0; end if;
			if ss = "110110" then d16 <= st0; end if;
			if ss = "110111" then d17 <= st0; end if;
			if ss = "111000" then d18 <= st0; end if;
			if ss = "111001" then d19 <= st0; end if;
			if ss = "111010" then d1a <= st0; end if;
			if ss = "111011" then d1b <= st0; end if;
			if ss = "111100" then d1c <= st0; end if;
			if ss = "111101" then d1d <= st0; end if;
			if ss = "111110" then d1e <= st0; end if;
			if ss = "111111" then d1f <= st0; end if;
		end if;
	end process;
	
	process (dsp,d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,d0a,d0b,d0c,d0d,d0e,d0f,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d1a,d1b,d1c,d1d,d1e,d1f)
	begin
		case dsp is
			when "00000" => st1 <= d00;
			when "00001" => st1 <= d01;
			when "00010" => st1 <= d02;
			when "00011" => st1 <= d03;
			when "00100" => st1 <= d04;
			when "00101" => st1 <= d05;
			when "00110" => st1 <= d06;
			when "00111" => st1 <= d07;
			when "01000" => st1 <= d08;
			when "01001" => st1 <= d09;
			when "01010" => st1 <= d0a;
			when "01011" => st1 <= d0b;
			when "01100" => st1 <= d0c;
			when "01101" => st1 <= d0d;
			when "01110" => st1 <= d0e;
			when "01111" => st1 <= d0f;
			when "10000" => st1 <= d10;
			when "10001" => st1 <= d11;
			when "10010" => st1 <= d12;
			when "10011" => st1 <= d13;
			when "10100" => st1 <= d14;
			when "10101" => st1 <= d15;
			when "10110" => st1 <= d16;
			when "10111" => st1 <= d17;
			when "11000" => st1 <= d18;
			when "11001" => st1 <= d19;
			when "11010" => st1 <= d1a;
			when "11011" => st1 <= d1b;
			when "11100" => st1 <= d1c;
			when "11101" => st1 <= d1d;
			when "11110" => st1 <= d1e;
			when "11111" => st1 <= d1f;
			when others => null;
		end case;
	end process;


	process (sys_clk_i,rsp,rr,r00,r01,r02,r03,r04,r05,r06,r07,r08,r09,r0a,r0b,r0c,r0d,r0e,r0f,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r1a,r1b,r1c,r1d,r1e,r1f)
	begin
		if sys_clk_i'event and sys_clk_i = '1' then
			if rr = "100000" then r00 <= rstkD_sig; end if;
			if rr = "100001" then r01 <= rstkD_sig; end if;
			if rr = "100010" then r02 <= rstkD_sig; end if;
			if rr = "100011" then r03 <= rstkD_sig; end if;
			if rr = "100100" then r04 <= rstkD_sig; end if;
			if rr = "100101" then r05 <= rstkD_sig; end if;
			if rr = "100110" then r06 <= rstkD_sig; end if;
			if rr = "100111" then r07 <= rstkD_sig; end if;
			if rr = "101000" then r08 <= rstkD_sig; end if;
			if rr = "101001" then r09 <= rstkD_sig; end if;
			if rr = "101010" then r0a <= rstkD_sig; end if;
			if rr = "101011" then r0b <= rstkD_sig; end if;
			if rr = "101100" then r0c <= rstkD_sig; end if;
			if rr = "101101" then r0d <= rstkD_sig; end if;
			if rr = "101110" then r0e <= rstkD_sig; end if;
			if rr = "101111" then r0f <= rstkD_sig; end if;
			if rr = "110000" then r10 <= rstkD_sig; end if;
			if rr = "110001" then r11 <= rstkD_sig; end if;
			if rr = "110010" then r12 <= rstkD_sig; end if;
			if rr = "110011" then r13 <= rstkD_sig; end if;
			if rr = "110100" then r14 <= rstkD_sig; end if;
			if rr = "110101" then r15 <= rstkD_sig; end if;
			if rr = "110110" then r16 <= rstkD_sig; end if;
			if rr = "110111" then r17 <= rstkD_sig; end if;
			if rr = "111000" then r18 <= rstkD_sig; end if;
			if rr = "111001" then r19 <= rstkD_sig; end if;
			if rr = "111010" then r1a <= rstkD_sig; end if;
			if rr = "111011" then r1b <= rstkD_sig; end if;
			if rr = "111100" then r1c <= rstkD_sig; end if;
			if rr = "111101" then r1d <= rstkD_sig; end if;
			if rr = "111110" then r1e <= rstkD_sig; end if;
			if rr = "111111" then r1f <= rstkD_sig; end if;
		end if;
	end process;
		
	process (rsp,r00,r01,r02,r03,r04,r05,r06,r07,r08,r09,r0a,r0b,r0c,r0d,r0e,r0f,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r1a,r1b, r1c,r1d,r1e,r1f)
	begin
		case rsp is
			when "00000" => rst0 <= r00;
			when "00001" => rst0 <= r01;
			when "00010" => rst0 <= r02;
			when "00011" => rst0 <= r03;
			when "00100" => rst0 <= r04;
			when "00101" => rst0 <= r05;
			when "00110" => rst0 <= r06;
			when "00111" => rst0 <= r07;
			when "01000" => rst0 <= r08;
			when "01001" => rst0 <= r09;
			when "01010" => rst0 <= r0a;
			when "01011" => rst0 <= r0b;
			when "01100" => rst0 <= r0c;
			when "01101" => rst0 <= r0d;
			when "01110" => rst0 <= r0e;
			when "01111" => rst0 <= r0f;
			when "10000" => rst0 <= r10;
			when "10001" => rst0 <= r11;
			when "10010" => rst0 <= r12;
			when "10011" => rst0 <= r13;
			when "10100" => rst0 <= r14;
			when "10101" => rst0 <= r15;
			when "10110" => rst0 <= r16;
			when "10111" => rst0 <= r17;
			when "11000" => rst0 <= r18;
			when "11001" => rst0 <= r19;
			when "11010" => rst0 <= r1a;
			when "11011" => rst0 <= r1b;
			when "11100" => rst0 <= r1c;
			when "11101" => rst0 <= r1d;
			when "11110" => rst0 <= r1e;
			when "11111" => rst0 <= r1f;
			when others => null;
		end case;
	end process;

end architecture rtl;	-- reg