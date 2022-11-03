----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2022 02:36:46 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output: out std_logic_vector(15 downto 0));
end ALU;

architecture Behavioral of ALU is
signal A : std_logic_vector (15 downto 0);
signal B : std_logic_vector (15 downto 0);
signal Add : std_logic_vector (15 downto 0);
signal Sub : std_logic_vector (15 downto 0);
signal SR : std_logic_vector (3 downto 0);
signal SL : std_logic_vector (3 downto 0);
signal Sx : std_logic_vector (15 downto 0);
signal Sy : std_logic_vector (15 downto 0);

begin

process(input,sel,A,B,SR,SL,Add,Sub,sx,sy)
begin
    A <= x"000" & input(3 downto 0);
    B <= x"000" & input(7 downto 4);
    Add<= A+B;
    Sub<= A-B;
    SR<= "00" & A(3 downto 2); --1111, 0011
    SL<= A(1 downto 0) & "00";   -- 0001,0100
    sx<= x"000" & SR;
    sy<= x"000" & SL;
    case (sel) is
        when "00" => output <= Add;
        when "01"  => output <= Sub;
        when "10" => output <= sx;
        when others => output <= sy ;
     end case;
end process;
end Behavioral;
