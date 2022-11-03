----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2022 10:17:18 PM
-- Design Name: 
-- Module Name: InstructionDecode - Behavioral
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

entity InstructionDecode is
 Port (
      CLK : in STD_LOGIC;
      EN : in STD_LOGIC;
      Instr : in STD_lOGIC_VECTOR(12 downto 0);
      WD : in STD_lOGIC_VECTOR(15 downto 0);
      RegWrite : in STD_LOGIC;
      RegDst : in STD_LOGIC;
      ExpOp : in STD_LOGIC;
      RD1 : in STD_lOGIC_VECTOR(15 downto 0);
      RD2 : in STD_lOGIC_VECTOR(15 downto 0);
      Ext_Imm : out STD_lOGIC_VECTOR(15 downto 0);
      func : out STD_lOGIC_VECTOR(2 downto 0);
      sa : out STD_LOGIC        
);
end InstructionDecode;

architecture Behavioral of InstructionDecode is

begin


end Behavioral;
