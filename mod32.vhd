----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2019 07:08:03 PM
-- Design Name: 
-- Module Name: mod32 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod32 is
    port(
    clk: in bit;
    en: in bit;
    clr: in bit;
    dir: in bit;
    qout: buffer std_logic_vector(4 downto 0));

end mod32;

architecture Behavioral of mod32 is

begin
    process(clk, en, clr, dir)
    begin
        if clr = '0' then
            qout <= "00000";
        elsif en = '0' then
            qout <= qout;
        elsif (clk'event and clk = '1') then
            if dir = '0' then
                qout <= qout + "00001";
            else
                qout <= qout - "00001";
   
            end if;
            end if;

end process;
end Behavioral;
