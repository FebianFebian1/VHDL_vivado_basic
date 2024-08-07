----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.07.2024 14:50:36
-- Design Name: 
-- Module Name: src - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

entity src is
    Port ( button1  : in STD_LOGIC;
           button2  : in std_logic;
           reset    : in std_logic;
           clk      : in std_logic;
           LED      : out std_logic_vector (7 downto 0));
end src;

architecture Behavioral of src is

    signal count : std_logic_vector(7 downto 0) := (others => '0');
    signal btn1_reg, btn2_reg : std_logic :='0';
    signal btn1_last, btn2_last: std_logic :='0';
    
begin
    
    process(clk, reset)
    begin
        if reset = '1' then
            count <= (others => '0');
            btn1_reg <= '0';
            btn2_reg <= '0';
            btn1_last <= '0';
            btn2_last <= '0';
        elsif rising_edge(clk) then
            btn1_last <= btn1_reg;
            btn2_last <= btn2_reg;
            btn1_reg <= button1;
            btn2_reg <= button2;
        
            if (btn1_last = '0' and btn1_reg = '1') then
                count <= count + 1;
            end if;
            
            if (btn2_last = '0' and btn2_reg = '1') then
                count <= count - 1;
            end if;
        end if;
    end process;
    
    LED <= count;
                       
end Behavioral;
