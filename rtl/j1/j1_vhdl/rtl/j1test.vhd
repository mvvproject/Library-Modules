library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;


entity j1test is
port (
	clk_i		: in  std_logic;
	sys_rst_i	: in  std_logic;
	io_data_i	: in  std_logic_vector(15 downto 0);
	io_rd_o		: out std_logic;
	io_wr_o		: out std_logic;
	io_addr_o	: out std_logic_vector(15 downto 0);
	io_data_o	: out std_logic_vector(15 downto 0)
);
end entity j1test;

architecture rtl of j1test is

signal sys_clk_i	: std_logic;
	
begin
	pll: entity work.altpll0
	port map (
		areset	 => not sys_rst_i,
		inclk0	 => clk_i,
		c0	 => sys_clk_i,
		locked	 => open
	);		

	forth: entity work.j1
	port map (
		sys_clk_i	=> sys_clk_i,
		sys_rst_i	=> not sys_rst_i,
		io_data_i	=> io_data_i,
		io_rd_o		=> io_rd_o,
		io_wr_o		=> io_wr_o,
		io_addr_o	=> io_addr_o,
		io_data_o	=> io_data_o
	);

end architecture rtl;