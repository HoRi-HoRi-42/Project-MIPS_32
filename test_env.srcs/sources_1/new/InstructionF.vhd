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

signal ROM: Rom_type := (b"010_000_110_0000001", --0 lw
                            b"010_000_101_0000010", --1 lw
                            b"000_110_101_110_0_000", --2 add
                            b"000_110_000_110_1_101", --3 sll
                            b"010_000_101_0000100", --4 lw
                            b"010_000_100_0000101", --5 lw 
                            b"000_101_100_101_0_001",--6 sub
                            b"000_101_000_101_1_101", --7 sll
                         others =>     b"000_101_000_101_1_101") ; --8 sll
signal JMux: STD_LOGIC_VECTOR(15 downto 0);

signal PCIn: STD_LOGIC_VECTOR (15 downto 0);
signal PCOut: STD_LOGIC_VECTOR (15 downto 0);
signal MUXBranch: STD_LOGIC_VECTOR (15 downto 0);


begin
process(EN, RESET, CLK)
begin 
 if (RESET = '1') then 
       PCOut <= x"0000";
   else if (EN = '1' and rising_edge(CLK)) then 
       PCOut <= PCIn;
       end if;
   end if;
end process;


Instruction <= ROM(conv_integer(PCOut));
NextInstruction <= PCOut + 1;

MUXBranch <= (PCOut + 1) when PCSrc = '0' else BranchAdr;
PCIn <= MUXBranch when Jump = '0' else JumpAdr;

end Behavioral;
