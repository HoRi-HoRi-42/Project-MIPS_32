----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2022 15:19:13
-- Design Name: 
-- Module Name: Unitatea_de_control - Behavioral
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


--figura 6.6 din labu6
entity UC_comp is
 Port (  --semnalele de pe schema
         RegDst: out STD_LOGIC ;
         ExtOp: out STD_LOGIC;
         ALUSrc: out STD_LOGIC;
         Branch: out STD_LOGIC;
         Jump: out STD_LOGIC ;
         ALUOp: out STD_LOGIC_VECTOR (2 downto 0);
         MemWrite: out STD_LOGIC ;
         MemtoReg: out STD_LOGIC ;
         RegWrite: out STD_LOGIC ;
       --instructiunea in sine
          opcode : in std_logic_vector (2 downto 0);
         func : in std_logic_vector (2 downto 0));
end UC_comp;

architecture Behavioral of UC_comp is
signal funct:STD_LOGIC_VECTOR( 2 downto 0);
begin
  process(opcode)
  begin
      case opcode is
          when "000" => RegDst <= '1';ExtOp<='0';AluSrc<='0';--de tip R
          Branch<='0';Jump<='0'; MemWrite <= '0'; MemtoReg <= '0'; RegWrite <= '1';
          when "001" =>  RegDst <= '0';ExtOp<='1';AluSrc<='1';--addi
           Branch<='0';Jump<='0'; MemWrite <= '0'; MemtoReg <= '0'; RegWrite <= '1';
          when "010" => RegDst <= '0';ExtOp<='1';AluSrc<='1';--lw
           Branch<='0';Jump<='0'; MemWrite <= '0'; MemtoReg <= '1'; RegWrite <= '1';
          when "011" =>  RegDst <= '0';ExtOp<='1';AluSrc<='1';--sw
           Branch<='0';Jump<='0'; MemWrite <= '1'; MemtoReg <= '0'; RegWrite <= '0';
          when "100" => RegDst <= '0';ExtOp<='1';AluSrc<='0';--beq
           Branch<='1';Jump<='0'; MemWrite <= '0'; MemtoReg <= '0'; RegWrite <= '0';
          when "101" => RegDst <= '0';ExtOp<='1';AluSrc<='1';--andi
            Branch<='0';Jump<='0'; MemWrite <= '0'; MemtoReg <= '0'; RegWrite <= '1';
          when "110" =>  RegDst <= '0';ExtOp<='1';AluSrc<='1';--ori
            Branch<='0';Jump<='0'; MemWrite <= '0'; MemtoReg <= '0'; RegWrite <= '1';
          when "111" =>  RegDst <= '0';ExtOp<='0';AluSrc<='0';--jump
            Branch<='0';Jump<='1'; MemWrite <= '0'; MemtoReg <= '0'; RegWrite <= '0';
      end case;
  end process;
  
  process(opcode,func)
      begin
          case opcode is
                   when "000" => 
                             case func is
                                 when "000" => ALUOp <= "000"; -- add
                                 when "001" => ALUOp <= "001"; -- sub
                                 when "010" => ALUOp <= "010"; --and
                                 when "011" => ALUOp <= "011"; -- or
                                 when "100" => ALUOp <= "100"; --sll
                                 when "101" => ALUOp <= "101"; -- srl
                                 when "110" => ALUOp <= "110"; --xor --
                                 when "111" => ALUOp <= "111"; --nor --
                             end case;
                         when "001" => ALUOp <= "000"; --addi
                         when "010" => ALUOp <= "000"; -- lw
                         when "011" => ALUOp <= "000"; --sw
                         when "100" => ALUOp <= "001"; --beq
                         when "101" => ALUOp <= "010"; --andi --
                         when "110" => ALUOp <= "011"; --ori --
                         when "111" => ALUOp <= "000"; --jump
                     end case;
      end process;
  

end Behavioral;