/*
 * Copyright (c) 2024 Yujin
 * SPDX-License-Identifier: Apache-2.0
 */

-- 4 to 16 decoder design
library IEEE;
use IEEE.std_logic_1164.all;

-- The 4 to 16 decoder
entity tt_um_dec4to16 is
port( 
	rst_n: in std_logic;	// not reset
	ui_in: in std_logic_vector(0 to 3);
	uo_out: out std_logic_vector(0 to 7);
	uio_out: out std_logic_vector(0 to 7)
);
end dec4to16;

architecture rtl of dec4to16 is

begin

	process (rst_n, ui_in)
	begin
		if  (rst_n = '0') then
			uo_out <= "00000000";
			uio_out <= "00000000";
		else
			case ui_in is
				when "0000" => uo_out <= "00000001";
				when "0001" => uo_out <= "00000010";
				when "0010" => uo_out <= "00000100";
				when "0011" => uo_out <= "00001000";
				when "0100" => uo_out <= "00010000";
				when "0101" => uo_out <= "00100000";
				when "0110" => uo_out <= "01000000";
				when "0111" => uo_out <= "10000000";
				when "1000" => uio_out <= "00000001";
				when "1001" => uio_out <= "00000010";
				when "1010" => uio_out <= "00000100";
				when "1011" => uio_out <= "00001000";
				when "1100" => uio_out <= "00010000";
				when "1101" => uio_out <= "00100000";
				when "1110" => uio_out <= "01000000";
				when "1111" => uio_out <= "10000000";
				when others => uio_out <= "00000000";
			end case;
		end if;
end process;

end rtl;
				
