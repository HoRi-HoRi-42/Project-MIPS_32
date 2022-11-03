----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 09:38:26 PM
-- Design Name: 
-- Module Name: ALUMips - Behavioral
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

entity ALUMips is
 Port (rd1:in STD_LOGIC_VECTOR(15 downto 0);
      AluRes: out STD_LOGIC_VECTOR( 15 downto 0);
      rd2:in STD_LOGIC_VECTOR(15 downto 0);
      Ext_imm:in STD_LOGIC_VECTOR(15 downto 0);
      AluSrc:in STD_LOGIC;
      sa:in STD_LOGIC;
      Pcplus1: in STD_LOGIC_VECTOR( 15 downto 0);  
      AluCtrl:in STD_LOGIC_VECTOR( 2 downto 0);
      zero:out STD_LOGIC;
      branchAddress: out STD_LOGIC_VECTOR(15 downto 0));
end ALUMips;

architecture Behavioral of ALUMips is
signal rezAlu:STD_LOGIC_VECTOR( 15 downto 0);
signal rezDif:STD_LOGIC_VECTOR( 15 downto 0);
signal input2:STD_LOGIC_VECTOR( 15 downto 0);

begin

 process(rezDif,rd1,input2)
          begin
          rezDif<=rd1 - input2;
          if rezDif = x"0000" then
            zero<= '1';
            else zero<='0';
          end if;
        end process;
        


with AluSrc select
    input2<=rd2 when '0',
            Ext_Imm when '1',
    (others => 'X') when others;


process(AluCtrl)
begin
case AluCtrl is  
when "000"  => AluRes<=rd1+input2;--add
when "001" => AluRes<=rd1-input2;--sub
when "010" => AluRes<= rd1 and input2;   --and
when "011"=> AluRes<=rd1 or input2;--or
when "100" => AluRes<=rd1( 14 downto 0)& '0';--sll 
when "101" => AluRes<='0' & rd1( 15 downto 1); --srl
when "110" => AluRes<=rd1 xor input2;--xor
when "111" => AluRes<=rd1 nor input2;--nor
when others=>AluRes<=x"0000";
end case;
end process;


 process(Pcplus1,Ext_Imm)
          begin 
                branchAddress<= Pcplus1+Ext_Imm;
                 
         end process;


end Behavioral;
