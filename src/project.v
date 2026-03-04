/*
 * Copyright (c) 2024 Yujin
 * SPDX-License-Identifier: Apache-2.0
 */

-- 4 to 16 decoder design
library IEEE;
use IEEE.std_logic_1164.all;

-- The 4 to 16 decoder
entity tt_um_dec4to16 is
port( rst_n: in std_logic;
	addr: in std_logic_vector(0 to 3);
	dec_out: out std_logic_vector(0 to 15)
);
end dec4to16;

architecture rtl of dec4to16 is

begin

process (rst_n, addr)
	begin
		if  (rst_n = '0') then
			dec_out <= "0000000000000000";
		else
			case addr is
				when "0000" => dec_out <= "0000000000000001";
				when "0001" => dec_out <= "0000000000000010";
				when "0010" => dec_out <= "0000000000000100";
				when "0011" => dec_out <= "0000000000001000";
				when "0100" => dec_out <= "0000000000010000";
				when "0101" => dec_out <= "0000000000100000";
				when "0110" => dec_out <= "0000000001000000";
				when "0111" => dec_out <= "0000000010000000";
				when "1000" => dec_out <= "0000000100000000";
				when "1001" => dec_out <= "0000001000000000";
				when "1010" => dec_out <= "0000010000000000";
				when "1011" => dec_out <= "0000100000000000";
				when "1100" => dec_out <= "0001000000000000";
				when "1101" => dec_out <= "0010000000000000";
				when "1110" => dec_out <= "0100000000000000";
				when "1111" => dec_out <= "1000000000000000";
				when others => dec_out <= "0000000000000000";
			end case;
		end if;
end process;

end rtl;
				
