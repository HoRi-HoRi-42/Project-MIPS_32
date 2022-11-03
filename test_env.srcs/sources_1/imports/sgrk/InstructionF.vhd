----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2022 05:26:13 PM
-- Design Name: 
-- Module Name: InstructionF - Behavioral
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

entity InstructionF is
 Port ( 
        JumpAdr : in STD_LOGIC_VECTOR (15 downto 0);
        BranchAdr : in STD_LOGIC_VECTOR (15 downto 0);
        Jump : in STD_LOGIC;
        PCSrc : in STD_LOGIC;
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        EN : in STD_LOGIC;
        Instruction : out STD_LOGIC_VECTOR (15 downto 0);
        NextInstruction : out STD_LOGIC_VECTOR (15 downto 0)      
 );
end InstructionF;

architecture Behavioral of InstructionF is
type ROM_type is array (0 to 255) of STD_LOGIC_VECTOR (15 downto 0);

signal ROM: Rom_type := (

--b"010_000_111_0000001",      --0  lw $7,$0,1 x"4381"
--b"010_000_110_0000010",      --1  lw $6,$0,2 x"4302"
--b"000_111_110_111_0_000",    --2  add $7,$7,$6 x"1F70"
--b"010_000_010_0000011",      --3  lw $2,$0,3 x"4103"
--b"000_111_000_111_1_101",    --4  srl $7,$7,1 x"1C7D"
--b"110_010_010_0000001",      --5  subi $2,$2,1 x"C901"
--b"100_000_010_0000001",      --6  beq $x,$0,1 x"8101"
--b"111_0000000000100",        --7  jmp 4 x"E004"
--b"010_000_110_0000100",      --8  lw $6,$0,4 x"4304"
--b"010_000_101_0000101",      --9  lw $5,$0,5 x"4285"
--b"000_110_101_110_0_001",    --10 sub $6,$6,$5 x"1AE1"
--b"010_000_010_0000110",      --11 lw $2,$0,6 x"4106"
--b"000_110_000_110_1_100",    --12 sll $6,$6,1 x"186C"
--b"110_010_010_0000001",      --13 subi $2,$2,1 x"C901"
--b"100_000_010_0000001",      --14 beq $2,$0,1 x"8101"
--b"111_0000000001100",        --15 jmp 12 x"E00C"
--b"000_111_110_111_0_000",    --16 add $7,$7,$6 x"1F70"
--b"011_000_111_0000111",      --17 sw $7,$0,7 x"6387"
--b"010_000_010_0000111",


--lw $6, $0,1 x"4301"
--NO_OP
--lw $5, $0, 1 x"4282"
--NO_OP
--NO_OP
--add $6, $6, $5 x"1AE0"
--NO_OP
--NO_OP
--sll $6, $6, 1 x"186D"
--lw $5, $0, 3 x"4284"
--NO_OP
--lw $4, $0, 4 x"4205"
--sub $5, $5, $4 x"1651"
--NO_OP
--NO_OP
--sll $5, $5, 1 x"415D"
--NO_OP
--NO_OP
--sll $5, $5, 1 x"415D"


                            b"010_000_110_0000001", --0 lw
                            b"000_000_000_0000000",
                            b"010_000_101_0000010", --1 lw
                            b"000_000_000_0000000",
                            b"000_000_000_0000000",                            
                            b"000_110_101_110_0_000", --2 add
                            b"000_000_000_0000000",
                            b"000_000_000_0000000",
                            b"000_110_000_110_1_101", --3 sll
                            b"010_000_101_0000100", --4 lw
                            b"000_000_000_0000000",
                            b"000_000_000_0000000",
                            b"010_000_100_0000101", --5 lw 
                            b"000_101_100_101_0_001",--6 sub
                            b"000_000_000_0000000",
                            b"000_000_000_0000000",
                            b"000_101_000_101_1_101", --7 sll
                            b"000_000_000_0000000",
                            b"000_000_000_0000000",
                         others =>     b"0000000000000000") ; --8 sll
                         
signal pcplus1: STD_LOGIC_VECTOR(15 downto 0);
signal PCIn: STD_LOGIC_VECTOR (15 downto 0):= (x"0000");
signal PCOut: STD_LOGIC_VECTOR (15 downto 0);
signal MUXBranch: STD_LOGIC_VECTOR (15 downto 0);


begin
process(EN, RESET, CLK)
begin 
 if (RESET = '1') then 
       PCOut <= x"0000";
   elsif (EN = '1' and rising_edge(CLK)) then 
       PCOut <= PCIn;
       end if;
end process;

process(pcOut)
begin
Instruction <= ROM(conv_integer(PCOut));
end process;
pcplus1 <= PCOut + 1;

MUXBranch <= pcplus1 when PCSrc = '0' else BranchAdr;
PCIn <= MUXBranch when Jump = '0' else JumpAdr;

NextInstruction<=pcplus1;


end Behavioral;
