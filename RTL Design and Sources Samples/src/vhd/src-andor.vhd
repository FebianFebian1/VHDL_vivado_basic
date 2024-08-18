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
           button3  : in std_logic;
           LED      : out std_logic);
end src;

architecture Behavioral of src is

    component and_part is
        port(in1, in2: in std_logic;
            out1: out std_logic);
    end component and_part;
    
    component or_part is
        port(in1, in2: in std_logic;
            out2: out std_logic);
    end component or_part;
                    
    signal temp: std_logic;
    
    begin
    inst_and: and_part port map(in1 => button1, in2 => button2, out1 => temp);
    inst_or: or_part port map(in1 => temp, in2=> button3, out2 => LED);
                   
end Behavioral;
