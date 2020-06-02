-------------------------------------------------------------------[17.03.2015]
-- DMA Sound
-------------------------------------------------------------------------------
-- Engineer: 	MVV
--
-- 08.03.2015	First Version
--
-- Copyright (c) 2015 MVV (mvvproject@gmail.com)
--
-- All rights reserved
--
-- Redistribution and use in source and synthezised forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- Redistributions of source code must retain the above copyright notice,
-- this list of conditions and the following disclaimer.
--
-- Redistributions in synthesized form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- Neither the name of the author nor the names of other contributors may
-- be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
--
-- Please report bugs to the author, but before you do so, please
-- make sure that this is not a derivative work and that
-- you have the latest version of this file.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity dmasound is
port ( 
	RST_I			: in  std_logic;
	CLK_I			: in  std_logic;
	ENA_I			: in  std_logic;
	ADR_I			: in  std_logic_vector(15 downto 0);
	DAT_I			: in  std_logic_vector( 7 downto 0);
	DAT_O			: out std_logic_vector( 7 downto 0);
	WRn_I			: in  std_logic;
	RDn_I			: in  std_logic;
	IORQn_I			: in  std_logic;
	INTA_I			: in  std_logic;
	INT_O			: out std_logic;
	-- Sound
	LEFT_O			: out std_logic_vector(16 downto 0);
	RIGHT_O			: out std_logic_vector(16 downto 0);
	-- Memory
	MEM_ADR_O		: out std_logic_vector(23 downto 0);
	MEM_DAT_I		: in  std_logic_vector( 7 downto 0);
	MEM_RD_O		: out std_logic;
	MEM_ACK_I		: in  std_logic);
end dmasound;
 
architecture rtl of dmasound is

	signal ch0_out 			: std_logic_vector(7 downto 0);
	signal ch1_out 			: std_logic_vector(7 downto 0);
	signal ch2_out 			: std_logic_vector(7 downto 0);
	signal ch3_out 			: std_logic_vector(7 downto 0);
	signal ch4_out 			: std_logic_vector(7 downto 0);
	signal ch5_out 			: std_logic_vector(7 downto 0);
	signal ch6_out 			: std_logic_vector(7 downto 0);
	signal ch7_out 			: std_logic_vector(7 downto 0);

	signal ch0_volume 		: std_logic_vector(5 downto 0);
	signal ch1_volume 		: std_logic_vector(5 downto 0);
	signal ch2_volume 		: std_logic_vector(5 downto 0);
	signal ch3_volume 		: std_logic_vector(5 downto 0);
	signal ch4_volume 		: std_logic_vector(5 downto 0);
	signal ch5_volume 		: std_logic_vector(5 downto 0);
	signal ch6_volume 		: std_logic_vector(5 downto 0);
	signal ch7_volume 		: std_logic_vector(5 downto 0);

	signal ch0_base_adr		: std_logic_vector(23 downto 0);
	signal ch1_base_adr		: std_logic_vector(23 downto 0);
	signal ch2_base_adr		: std_logic_vector(23 downto 0);
	signal ch3_base_adr		: std_logic_vector(23 downto 0);
	signal ch4_base_adr		: std_logic_vector(23 downto 0);
	signal ch5_base_adr		: std_logic_vector(23 downto 0);
	signal ch6_base_adr		: std_logic_vector(23 downto 0);
	signal ch7_base_adr		: std_logic_vector(23 downto 0);

	signal ch0_base_count		: std_logic_vector(23 downto 0);
	signal ch1_base_count		: std_logic_vector(23 downto 0);
	signal ch2_base_count		: std_logic_vector(23 downto 0);
	signal ch3_base_count		: std_logic_vector(23 downto 0);
	signal ch4_base_count		: std_logic_vector(23 downto 0);
	signal ch5_base_count		: std_logic_vector(23 downto 0);
	signal ch6_base_count		: std_logic_vector(23 downto 0);
	signal ch7_base_count		: std_logic_vector(23 downto 0);

	signal ch0_current_adr		: std_logic_vector(23 downto 0);
	signal ch1_current_adr		: std_logic_vector(23 downto 0);
	signal ch2_current_adr		: std_logic_vector(23 downto 0);
	signal ch3_current_adr		: std_logic_vector(23 downto 0);
	signal ch4_current_adr		: std_logic_vector(23 downto 0);
	signal ch5_current_adr		: std_logic_vector(23 downto 0);
	signal ch6_current_adr		: std_logic_vector(23 downto 0);
	signal ch7_current_adr		: std_logic_vector(23 downto 0);

	signal ch0_current_count	: std_logic_vector(23 downto 0);
	signal ch1_current_count	: std_logic_vector(23 downto 0);
	signal ch2_current_count	: std_logic_vector(23 downto 0);
	signal ch3_current_count	: std_logic_vector(23 downto 0);
	signal ch4_current_count	: std_logic_vector(23 downto 0);
	signal ch5_current_count	: std_logic_vector(23 downto 0);
	signal ch6_current_count	: std_logic_vector(23 downto 0);
	signal ch7_current_count	: std_logic_vector(23 downto 0);

	signal ch0_base_timer		: std_logic_vector(15 downto 0);
	signal ch1_base_timer		: std_logic_vector(15 downto 0);
	signal ch2_base_timer		: std_logic_vector(15 downto 0);
	signal ch3_base_timer		: std_logic_vector(15 downto 0);
	signal ch4_base_timer		: std_logic_vector(15 downto 0);
	signal ch5_base_timer		: std_logic_vector(15 downto 0);
	signal ch6_base_timer		: std_logic_vector(15 downto 0);
	signal ch7_base_timer		: std_logic_vector(15 downto 0);

	signal ch0_current_timer	: std_logic_vector(15 downto 0);
	signal ch1_current_timer	: std_logic_vector(15 downto 0);
	signal ch2_current_timer	: std_logic_vector(15 downto 0);
	signal ch3_current_timer	: std_logic_vector(15 downto 0);
	signal ch4_current_timer	: std_logic_vector(15 downto 0);
	signal ch5_current_timer	: std_logic_vector(15 downto 0);
	signal ch6_current_timer	: std_logic_vector(15 downto 0);
	signal ch7_current_timer	: std_logic_vector(15 downto 0);

	signal temp_adr			: std_logic_vector(23 downto 0);
	signal temp_read		: std_logic;
	signal temp_int			: std_logic;
	signal state			: std_logic := '0';
	signal priority			: std_logic_vector(2 downto 0) := "000";
	signal channal			: std_logic_vector(2 downto 0) := "000";
	
	signal ch0_req			: std_logic := '0';
	signal ch1_req			: std_logic := '0';
	signal ch2_req			: std_logic := '0';
	signal ch3_req			: std_logic := '0';
	signal ch4_req			: std_logic := '0';
	signal ch5_req			: std_logic := '0';
	signal ch6_req			: std_logic := '0';
	signal ch7_req			: std_logic := '0';
	
	signal ch_enable		: std_logic_vector(7 downto 0);
	signal ch_loop			: std_logic_vector(7 downto 0);
	signal ch_mixing		: std_logic_vector(7 downto 0);
	
	signal ch0_volume_out		: std_logic_vector(13 downto 0);
	signal ch1_volume_out		: std_logic_vector(13 downto 0);
	signal ch2_volume_out		: std_logic_vector(13 downto 0);
	signal ch3_volume_out		: std_logic_vector(13 downto 0);
	signal ch4_volume_out		: std_logic_vector(13 downto 0);
	signal ch5_volume_out		: std_logic_vector(13 downto 0);
	signal ch6_volume_out		: std_logic_vector(13 downto 0);
	signal ch7_volume_out		: std_logic_vector(13 downto 0);
	
	signal left_stream0		: std_logic_vector(13 downto 0);
	signal left_stream1		: std_logic_vector(13 downto 0);
	signal left_stream2		: std_logic_vector(13 downto 0);
	signal left_stream3		: std_logic_vector(13 downto 0);

	signal right_stream0		: std_logic_vector(13 downto 0);
	signal right_stream1		: std_logic_vector(13 downto 0);
	signal right_stream2		: std_logic_vector(13 downto 0);
	signal right_stream3		: std_logic_vector(13 downto 0);
	
begin

process (RST_I, CLK_I, IORQn_I, WRn_I, ADR_I, DAT_I, RDn_I, ch_enable, ch0_out, ch0_volume, ch1_out, ch1_volume, ch2_out, ch2_volume, ch3_out, ch3_volume, ch4_out, ch4_volume, ch5_out,
	ch5_volume, ch6_out, ch6_volume, ch7_out, ch7_volume, ch_mixing, ch0_volume_out, ch1_volume_out, ch2_volume_out, ch3_volume_out, ch4_volume_out, ch5_volume_out, ch6_volume_out, ch7_volume_out)
begin
	if (RST_I = '1') then
		ch0_volume	<= (others => '0');
		ch1_volume	<= (others => '0');
		ch2_volume	<= (others => '0');
		ch3_volume	<= (others => '0');
		ch4_volume	<= (others => '0');
		ch5_volume	<= (others => '0');
		ch6_volume	<= (others => '0');
		ch7_volume	<= (others => '0');

		ch0_base_adr	<= (others => '0');
		ch1_base_adr	<= (others => '0');
		ch2_base_adr	<= (others => '0');
		ch3_base_adr	<= (others => '0');
		ch4_base_adr	<= (others => '0');
		ch5_base_adr	<= (others => '0');
		ch6_base_adr	<= (others => '0');
		ch7_base_adr	<= (others => '0');
		
		ch0_base_count	<= (others => '0');
		ch1_base_count	<= (others => '0');
		ch2_base_count	<= (others => '0');
		ch3_base_count	<= (others => '0');
		ch4_base_count	<= (others => '0');
		ch5_base_count	<= (others => '0');
		ch6_base_count	<= (others => '0');
		ch7_base_count	<= (others => '0');
			
		ch0_base_timer	<= (others => '0');
		ch1_base_timer	<= (others => '0');
		ch2_base_timer	<= (others => '0');
		ch3_base_timer	<= (others => '0');
		ch4_base_timer	<= (others => '0');
		ch5_base_timer	<= (others => '0');
		ch6_base_timer	<= (others => '0');
		ch7_base_timer	<= (others => '0');

		ch_enable	<= (others => '0');
		ch_loop		<= (others => '0');
		ch_mixing	<= (others => '0');
		
		ch0_req		<= '0';
		ch1_req		<= '0';
		ch2_req		<= '0';
		ch3_req		<= '0';
		ch4_req		<= '0';
		ch5_req		<= '0';
		ch6_req		<= '0';
		ch7_req		<= '0';
		
		priority	<= (others => '0');
		temp_int	<= '0';
	
	elsif (CLK_I'event and CLK_I = '1') then
		------------------------------------------------------------------------
		-- INT
		if (INTA_I = '1') then temp_int <= '0'; end if;

		------------------------------------------------------------------------
		-- Channal 0
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0050") then ch0_base_adr( 7 downto  0) <= DAT_I; ch0_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0150") then ch0_base_adr(15 downto  8) <= DAT_I; ch0_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0250") then ch0_base_adr(23 downto 16) <= DAT_I; ch0_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0350") then ch0_base_adr(31 downto 24) <= DAT_I; ch0_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0450") then ch0_base_count( 7 downto  0) <= DAT_I; ch0_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0550") then ch0_base_count(15 downto  8) <= DAT_I; ch0_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0650") then ch0_base_count(23 downto 16) <= DAT_I; ch0_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0750") then ch0_base_count(31 downto 24) <= DAT_I; ch0_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0850") then ch0_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0950") then ch0_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"0A50") then ch0_volume <= DAT_I( 5 downto  0); end if;
		------------------------------------------------------------------------
		-- Channal 1
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1050") then ch1_base_adr( 7 downto  0) <= DAT_I; ch1_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1150") then ch1_base_adr(15 downto  8) <= DAT_I; ch1_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1250") then ch1_base_adr(23 downto 16) <= DAT_I; ch1_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1350") then ch1_base_adr(31 downto 24) <= DAT_I; ch1_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1450") then ch1_base_count( 7 downto  0) <= DAT_I; ch1_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1550") then ch1_base_count(15 downto  8) <= DAT_I; ch1_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1650") then ch1_base_count(23 downto 16) <= DAT_I; ch1_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1750") then ch1_base_count(31 downto 24) <= DAT_I; ch1_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1850") then ch1_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1950") then ch1_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"1A50") then ch1_volume <= DAT_I(5 downto 0); end if;
		------------------------------------------------------------------------
		-- Channal 2
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2050") then ch2_base_adr( 7 downto  0) <= DAT_I; ch2_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2150") then ch2_base_adr(15 downto  8) <= DAT_I; ch2_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2250") then ch2_base_adr(23 downto 16) <= DAT_I; ch2_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2350") then ch2_base_adr(31 downto 24) <= DAT_I; ch2_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2450") then ch2_base_count( 7 downto  0) <= DAT_I; ch2_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2550") then ch2_base_count(15 downto  8) <= DAT_I; ch2_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2650") then ch2_base_count(23 downto 16) <= DAT_I; ch2_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2750") then ch2_base_count(31 downto 24) <= DAT_I; ch2_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2850") then ch2_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2950") then ch2_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"2A50") then ch2_volume <= DAT_I(5 downto 0); end if;
		------------------------------------------------------------------------
		-- Channal 3
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3050") then ch3_base_adr( 7 downto  0) <= DAT_I; ch3_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3150") then ch3_base_adr(15 downto  8) <= DAT_I; ch3_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3250") then ch3_base_adr(23 downto 16) <= DAT_I; ch3_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3350") then ch3_base_adr(31 downto 24) <= DAT_I; ch3_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3450") then ch3_base_count( 7 downto  0) <= DAT_I; ch3_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3550") then ch3_base_count(15 downto  8) <= DAT_I; ch3_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3650") then ch3_base_count(23 downto 16) <= DAT_I; ch3_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3750") then ch3_base_count(31 downto 24) <= DAT_I; ch3_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3850") then ch3_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3950") then ch3_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"3A50") then ch3_volume <= DAT_I(5 downto 0); end if;
		------------------------------------------------------------------------
		-- Channal 4
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4050") then ch4_base_adr( 7 downto  0) <= DAT_I; ch4_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4150") then ch4_base_adr(15 downto  8) <= DAT_I; ch4_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4250") then ch4_base_adr(23 downto 16) <= DAT_I; ch4_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4350") then ch4_base_adr(31 downto 24) <= DAT_I; ch4_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4450") then ch4_base_count( 7 downto  0) <= DAT_I; ch4_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4550") then ch4_base_count(15 downto  8) <= DAT_I; ch4_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4650") then ch4_base_count(23 downto 16) <= DAT_I; ch4_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4750") then ch4_base_count(31 downto 24) <= DAT_I; ch4_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4850") then ch4_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4950") then ch4_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"4A50") then ch4_volume <= DAT_I(5 downto 0); end if;
		------------------------------------------------------------------------
		-- Channal 5
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5050") then ch5_base_adr( 7 downto  0) <= DAT_I; ch5_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5150") then ch5_base_adr(15 downto  8) <= DAT_I; ch5_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5250") then ch5_base_adr(23 downto 16) <= DAT_I; ch5_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5350") then ch5_base_adr(31 downto 24) <= DAT_I; ch5_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5450") then ch5_base_count( 7 downto  0) <= DAT_I; ch5_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5550") then ch5_base_count(15 downto  8) <= DAT_I; ch5_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5650") then ch5_base_count(23 downto 16) <= DAT_I; ch5_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5750") then ch5_base_count(31 downto 24) <= DAT_I; ch5_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5850") then ch5_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5950") then ch5_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"5A50") then ch5_volume <= DAT_I(5 downto 0); end if;
		------------------------------------------------------------------------
		-- Channal 6
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6050") then ch6_base_adr( 7 downto  0) <= DAT_I; ch6_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6150") then ch6_base_adr(15 downto  8) <= DAT_I; ch6_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6250") then ch6_base_adr(23 downto 16) <= DAT_I; ch6_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6350") then ch6_base_adr(31 downto 24) <= DAT_I; ch6_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6450") then ch6_base_count( 7 downto  0) <= DAT_I; ch6_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6550") then ch6_base_count(15 downto  8) <= DAT_I; ch6_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6650") then ch6_base_count(23 downto 16) <= DAT_I; ch6_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6750") then ch6_base_count(31 downto 24) <= DAT_I; ch6_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6850") then ch6_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6950") then ch6_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"6A50") then ch6_volume <= DAT_I(5 downto 0); end if;
		------------------------------------------------------------------------
		-- Channal 7
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7050") then ch7_base_adr( 7 downto  0) <= DAT_I; ch7_current_adr( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7150") then ch7_base_adr(15 downto  8) <= DAT_I; ch7_current_adr(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7250") then ch7_base_adr(23 downto 16) <= DAT_I; ch7_current_adr(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7350") then ch7_base_adr(31 downto 24) <= DAT_I; ch7_current_adr(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7450") then ch7_base_count( 7 downto  0) <= DAT_I; ch7_current_count( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7550") then ch7_base_count(15 downto  8) <= DAT_I; ch7_current_count(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7650") then ch7_base_count(23 downto 16) <= DAT_I; ch7_current_count(23 downto 16) <= DAT_I; end if;
--		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7750") then ch7_base_count(31 downto 24) <= DAT_I; ch7_current_count(31 downto 24) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7850") then ch7_base_timer( 7 downto  0) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7950") then ch7_base_timer(15 downto  8) <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"7A50") then ch7_volume <= DAT_I(5 downto 0); end if;
		

		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"8050") then ch_mixing <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"8150") then ch_loop   <= DAT_I; end if;
		if (IORQn_I = '0' and WRn_I = '0' and ADR_I = X"8250") then ch_enable <= DAT_I; end if;

		------------------------------------------------------------------------
		-- Timer Channel 0
		if (ch_enable(0) = '1') then
			if (ENA_I = '1') then
				if (ch0_current_timer = ch0_base_timer) then
					ch0_current_timer <= (others => '0');
					ch0_req <= '1';
				else
					ch0_current_timer <= ch0_current_timer + 1;
				end if;
			end if;
		else
			ch0_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 1
		if (ch_enable(1) = '1') then
			if (ENA_I = '1') then
				if (ch1_current_timer = ch1_base_timer) then
					ch1_current_timer <= (others => '0');
					ch1_req <= '1';
				else
					ch1_current_timer <= ch1_current_timer + 1;
				end if;
			end if;
		else
			ch1_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 2
		if (ch_enable(2) = '1') then
			if (ENA_I = '1') then
				if (ch2_current_timer = ch2_base_timer) then
					ch2_current_timer <= (others => '0');
					ch2_req <= '1';
				else
					ch2_current_timer <= ch2_current_timer + 1;
				end if;
			end if;
		else
			ch2_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 3
		if (ch_enable(3) = '1') then
			if (ENA_I = '1') then
				if (ch3_current_timer = ch3_base_timer) then
					ch3_current_timer <= (others => '0');
					ch3_req <= '1';
				else
					ch3_current_timer <= ch3_current_timer + 1;
				end if;
			end if;
		else
			ch3_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 4
		if (ch_enable(4) = '1') then
			if (ENA_I = '1') then
				if (ch4_current_timer = ch4_base_timer) then
					ch4_current_timer <= (others => '0');
					ch4_req <= '1';
				else
					ch4_current_timer <= ch4_current_timer + 1;
				end if;
			end if;
		else
			ch4_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 5
		if (ch_enable(5) = '1') then
			if (ENA_I = '1') then
				if (ch5_current_timer = ch5_base_timer) then
					ch5_current_timer <= (others => '0');
					ch5_req <= '1';
				else
					ch5_current_timer <= ch5_current_timer + 1;
				end if;
			end if;
		else
			ch5_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 6
		if (ch_enable(6) = '1') then
			if (ENA_I = '1') then
				if (ch6_current_timer = ch6_base_timer) then
					ch6_current_timer <= (others => '0');
					ch6_req <= '1';
				else
					ch6_current_timer <= ch6_current_timer + 1;
				end if;
			end if;
		else
			ch6_current_timer <= (others => '0');
		end if;
		------------------------------------------------------------------------
		-- Timer Channel 7
		if (ch_enable(7) = '1') then
			if (ENA_I = '1') then
				if (ch7_current_timer = ch7_base_timer) then
					ch7_current_timer <= (others => '0');
					ch7_req <= '1';
				else
					ch7_current_timer <= ch7_current_timer + 1;
				end if;
			end if;
		else
			ch7_current_timer <= (others => '0');
		end if;

		------------------------------------------------------------------------
		-- DMA
		case state is
			-- Idle
			when '0' =>
				-- Channel 0
				if (ch0_req = '1' and (priority = "000" or (ch1_req = '0' and ch2_req = '0' and ch3_req = '0' and ch4_req = '0' and ch5_req = '0' and ch6_req = '0' and ch7_req = '0'))) then
					ch0_req <= '0';
					priority <= priority + 1;
					channal <= "000";
					temp_adr <= ch0_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch0_current_count = X"000000") then
						if (ch_loop(0) = '1') then
							ch0_current_adr <= ch0_base_adr;
							ch0_current_count <= ch0_base_count;
						else
							ch_enable(0) <= '0';
							temp_int <= '1';
						end if;
					else
						ch0_current_adr <= ch0_current_adr + 1;
						ch0_current_count <= ch0_current_count + X"FFFFFF";
					end if;
				-- Channel 1
				elsif (ch1_req = '1' and (priority = "001" or (ch0_req = '0' and ch2_req = '0' and ch3_req = '0' and ch4_req = '0' and ch5_req = '0' and ch6_req = '0' and ch7_req = '0'))) then
					ch1_req <= '0';
					priority <= priority + 1;
					channal <= "001";
					temp_adr <= ch1_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch1_current_count = X"000000") then
						if (ch_loop(1) = '1') then
							ch1_current_adr <= ch1_base_adr;
							ch1_current_count <= ch1_base_count;
						else
							ch_enable(1) <= '0';
							temp_int <= '1';
						end if;
					else
						ch1_current_adr <= ch1_current_adr + 1;
						ch1_current_count <= ch1_current_count + X"FFFFFF";
					end if;
				-- Channel 2
				elsif (ch2_req = '1' and (priority = "010" or (ch0_req = '0' and ch1_req = '0' and ch3_req = '0' and ch4_req = '0' and ch5_req = '0' and ch6_req = '0' and ch7_req = '0'))) then
					ch2_req <= '0';
					priority <= priority + 1;
					channal <= "010";
					temp_adr <= ch2_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch2_current_count = X"000000") then
						if (ch_loop(2) = '1') then
							ch2_current_adr <= ch2_base_adr;
							ch2_current_count <= ch2_base_count;
						else
							ch_enable(2) <= '0';
							temp_int <= '1';
						end if;
					else
						ch2_current_adr <= ch2_current_adr + 1;
						ch2_current_count <= ch2_current_count + X"FFFFFF";
					end if;
				-- Channel 3
				elsif (ch3_req = '1' and (priority = "011" or (ch0_req = '0' and ch1_req = '0' and ch2_req = '0' and ch4_req = '0' and ch5_req = '0' and ch6_req = '0' and ch7_req = '0'))) then
					ch3_req <= '0';
					priority <= priority + 1;
					channal <= "011";
					temp_adr <= ch3_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch3_current_count = X"000000") then
						if (ch_loop(0) = '1') then
							ch3_current_adr <= ch3_base_adr;
							ch3_current_count <= ch3_base_count;
						else
							ch_enable(3) <= '0';
							temp_int <= '1';
						end if;
					else
						ch3_current_adr <= ch3_current_adr + 1;
						ch3_current_count <= ch3_current_count + X"FFFFFF";
					end if;
				-- Channel 4
				elsif (ch4_req = '1' and (priority = "100" or (ch0_req = '0' and ch1_req = '0' and ch2_req = '0' and ch3_req = '0' and ch5_req = '0' and ch6_req = '0' and ch7_req = '0'))) then
					ch4_req <= '0';
					priority <= priority + 1;
					channal <= "100";
					temp_adr <= ch4_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch4_current_count = X"000000") then
						if (ch_loop(4) = '1') then
							ch4_current_adr <= ch4_base_adr;
							ch4_current_count <= ch4_base_count;
						else
							ch_enable(4) <= '0';
							temp_int <= '1';
						end if;
					else
						ch4_current_adr <= ch4_current_adr + 1;
						ch4_current_count <= ch4_current_count + X"FFFFFF";
					end if;
				-- Channel 5
				elsif (ch5_req = '1' and (priority = "101" or (ch0_req = '0' and ch1_req = '0' and ch2_req = '0' and ch3_req = '0' and ch4_req = '0' and ch6_req = '0' and ch7_req = '0'))) then
					ch5_req <= '0';
					priority <= priority + 1;
					channal <= "101";
					temp_adr <= ch5_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch5_current_count = X"000000") then
						if (ch_loop(5) = '1') then
							ch5_current_adr <= ch5_base_adr;
							ch5_current_count <= ch5_base_count;
						else
							ch_enable(5) <= '0';
							temp_int <= '1';
						end if;
					else
						ch5_current_adr <= ch5_current_adr + 1;
						ch5_current_count <= ch5_current_count + X"FFFFFF";
					end if;
				-- Channel 6
				elsif (ch6_req = '1' and (priority = "110" or (ch0_req = '0' and ch1_req = '0' and ch2_req = '0' and ch3_req = '0' and ch4_req = '0' and ch5_req = '0' and ch7_req = '0'))) then
					ch6_req <= '0';
					priority <= priority + 1;
					channal <= "110";
					temp_adr <= ch6_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch6_current_count = X"000000") then
						if (ch_loop(6) = '1') then
							ch6_current_adr <= ch6_base_adr;
							ch6_current_count <= ch6_base_count;
						else
							ch_enable(6) <= '0';
							temp_int <= '1';
						end if;
					else
						ch6_current_adr <= ch6_current_adr + 1;
						ch6_current_count <= ch6_current_count + X"FFFFFF";
					end if;
				-- Channel 7
				elsif (ch7_req = '1' and (priority = "111" or (ch0_req = '0' and ch1_req = '0' and ch2_req = '0' and ch3_req = '0' and ch4_req = '0' and ch5_req = '0' and ch6_req = '0'))) then
					ch7_req <= '0';
					priority <= priority + 1;
					channal <= "111";
					temp_adr <= ch7_current_adr;
					temp_read <= '1';
					state <= '1';
					if (ch7_current_count = X"000000") then
						if (ch_loop(7) = '1') then
							ch7_current_adr <= ch7_base_adr;
							ch7_current_count <= ch7_base_count;
						else
							ch_enable(7) <= '0';
							temp_int <= '1';
						end if;
					else
						ch7_current_adr <= ch7_current_adr + 1;
						ch7_current_count <= ch7_current_count + X"FFFFFF";
					end if;
				end if;
			------------------------------------------------------------------------
			when '1' =>
				if (MEM_ACK_I = '1') then
					case channal is
						when "000" => ch0_out <= MEM_DAT_I;
						when "001" => ch1_out <= MEM_DAT_I;
						when "010" => ch2_out <= MEM_DAT_I;
						when "011" => ch3_out <= MEM_DAT_I;
						when "100" => ch4_out <= MEM_DAT_I;
						when "101" => ch5_out <= MEM_DAT_I;
						when "110" => ch6_out <= MEM_DAT_I;
						when "111" => ch7_out <= MEM_DAT_I;
						when others => null;
					end case;
					state <= '0';
					temp_read <= '0';
				end if;
			when others => null;
		end case;

	end if;

	------------------------------------------------------------------------
	-- Port OUT
	if (ADR_I(15 downto 8) = X"82") then DAT_O <= ch_enable; else DAT_O <= (others => '1'); end if;	
	
	------------------------------------------------------------------------
	-- Volume Channal
	ch0_volume_out <= ch0_out * ch0_volume;
	ch1_volume_out <= ch1_out * ch1_volume;
	ch2_volume_out <= ch2_out * ch2_volume;
	ch3_volume_out <= ch3_out * ch3_volume;
	ch4_volume_out <= ch4_out * ch4_volume;
	ch5_volume_out <= ch5_out * ch5_volume;
	ch6_volume_out <= ch6_out * ch6_volume;
	ch7_volume_out <= ch7_out * ch7_volume;

	------------------------------------------------------------------------
	-- Mixing Channal
	if ch_mixing(0) = '1' then left_stream0 <= ch0_volume_out; else left_stream0 <= (others => '0'); end if;
	if ch_mixing(1) = '1' then left_stream1 <= ch1_volume_out; else left_stream1 <= (others => '0'); end if;
	if ch_mixing(2) = '1' then left_stream2 <= ch2_volume_out; else left_stream2 <= (others => '0'); end if;
	if ch_mixing(3) = '1' then left_stream3 <= ch3_volume_out; else left_stream3 <= (others => '0'); end if;
	
	if ch_mixing(4) = '1' then right_stream0 <= ch4_volume_out; else right_stream0 <= (others => '0'); end if;
	if ch_mixing(5) = '1' then right_stream1 <= ch5_volume_out; else right_stream1 <= (others => '0'); end if;
	if ch_mixing(6) = '1' then right_stream2 <= ch6_volume_out; else right_stream2 <= (others => '0'); end if;
	if ch_mixing(7) = '1' then right_stream3 <= ch7_volume_out; else right_stream3 <= (others => '0'); end if;

end process;

------------------------------------------------------------------------
MEM_ADR_O <= temp_adr;
MEM_RD_O  <= temp_read;
INT_O     <= temp_int;
LEFT_O    <= ("000" & ch7_volume_out) + ("000" & ch6_volume_out) + ("000" & ch5_volume_out) + ("000" & ch4_volume_out) + ("000" & left_stream3) + ("000" & left_stream2) + ("000" & left_stream1) + ("000" & left_stream0);
RIGHT_O   <= ("000" & ch3_volume_out) + ("000" & ch2_volume_out) + ("000" & ch1_volume_out) + ("000" & ch0_volume_out) + ("000" & right_stream3) + ("000" & right_stream2) + ("000" & right_stream1) + ("000" & right_stream0);

end rtl;
