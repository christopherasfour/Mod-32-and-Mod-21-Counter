----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2019 11:31:23 AM
-- Design Name: 
-- Module Name: tb_mod32 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mod32 is
end tb_mod32;

architecture Behavioral of tb_mod32 is
    component mod32 is
        port(
        clk: in bit;
        en: in bit;
        clr: in bit;
        dir: in bit;
        qout: buffer std_logic_vector(4 downto 0));
    end component;
    
        signal clk, en, clr, dir: bit;
        signal qout: std_logic_vector(4 downto 0);
begin
    uut: mod32
        port map(clk => clk, clr => clr, en => en, dir => dir, qout => qout);
        process
        begin
            wait for 40ns;
            if clk = '0' then
                clk <= '1';
            else
                clk <= '0';
            end if;
        end process;
        
        clr <= '1';
        en <= '1', '0' after 599ns, '1' after 899ns;
        dir <= '0', '1' after 2900ns;

end Behavioral;
