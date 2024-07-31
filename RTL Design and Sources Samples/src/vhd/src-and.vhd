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

entity abc is
    Port ( button1 : in STD_LOGIC;
           button2 : in std_logic;
           led1 : out STD_LOGIC);
end abc;

architecture Behaviral of abc is
begin
    led1 <= button1 and button2;
end Behaviral;
