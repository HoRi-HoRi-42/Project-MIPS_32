----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2022 02:36:46 PM
-- Design Name: 
-- Module Name: test_env - Behavioral
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

entity test_env is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (4 downto 0);
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0));
end test_env;

architecture Behavioral of test_env is

component MPG is
    Port ( btn : in STD_LOGIC;
           clk : in STD_LOGIC;
           en : out STD_LOGIC);
end component;

component SSD is
    Port ( clk : in STD_LOGIC;
           cnt : in STD_LOGIC_VECTOR (15 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--component ALU is
    --Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
     --      sel : in STD_LOGIC_VECTOR (1 downto 0);
     --      output: out std_logic_vector(15 downto 0));
--end component;

component InstructionF is
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
end component;

component InstructionDecode is
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
end component;

component ID_comp
    Port ( clk: in STD_LOGIC;
           en: in STD_LOGIC;
           instr : in STD_LOGIC_VECTOR (15 downto 0);
           RegW : in STD_LOGIC;
           rd1 : out STD_LOGIC_VECTOR (15 downto 0);
           rd2 : out STD_LOGIC_VECTOR (15 downto 0);
           RegDst : in STD_LOGIC;
           wd : in STD_LOGIC_VECTOR (15 downto 0);
           ExtOp : in STD_LOGIC;
           ExtImm : out STD_LOGIC_VECTOR (15 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           sa: out STD_LOGIC);
end component;

component UC_comp is
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
         instruction: in STD_LOGIC_VECTOR (15 downto 0));
end component;

signal en:STD_LOGIC;
signal cnt:STD_LOGIC_VECTOR(15 downto 0);
signal start:STD_LOGIC_VECTOR(7 downto 0);
signal output1:STD_LOGIC_VECTOR(15 downto 0);

signal jumpAdr:STD_LOGIC_VECTOR(15 downto 0);
signal rst:STD_LOGIC;
signal instr:STD_LOGIC_VECTOR(15 downto 0);
signal nextInstr:STD_LOGIC_VECTOR(15 downto 0);

signal digits:STD_LOGIC_VECTOR(15 downto 0);


signal en1: STD_LOGIC;
signal R_D: STD_LOGIC_VECTOR(15 downto 0);
signal wd: STD_LOGIC_VECTOR(15 downto 0);
signal rd1: STD_LOGIC_VECTOR(15 downto 0);
signal rd2: STD_LOGIC_VECTOR(15 downto 0);
signal di: STD_LOGIC_VECTOR(15 downto 0);
signal do: STD_LOGIC_VECTOR(15 downto 0);
signal PC1: STD_LOGIC_VECTOR(15 downto 0);
signal SMux: STD_LOGIC_VECTOR(15 downto 0);
signal RegDst: STD_LOGIC;
signal ExtOp: STD_LOGIC;
signal ExtImm: STD_LOGIC_VECTOR(15 downto 0);
signal func: STD_LOGIC_VECTOR(2 downto 0);
signal sa: STD_LOGIC;
signal RegW: STD_LOGIC;

signal ALUSrc: STD_LOGIC;
signal Branch: STD_LOGIC;
signal Jump: STD_LOGIC;
signal ALUOp: STD_LOGIC_VECTOR (2 downto 0);
signal MemWrite: STD_LOGIC;
signal MemtoReg: STD_LOGIC;
signal RegWrite: STD_LOGIC;

signal Ext_func: STD_LOGIC_VECTOR (15 downto 0);
signal Ext_sa: STD_LOGIC_VECTOR (15 downto 0);



begin
mpg1 : MPG port map (btn(0),clk,en);
mpg2 : MPG port map (btn(1),clk,rst);
--ssd1 : SSD port map (clk,output1,cat,an);
instrF : InstructionF port map (x"0012",x"0013",'0','0',clk,rst,en,instr,NextInstr);

id_componenta : ID_comp port map (clk, en, Instr, RegW, rd1, rd2, regDst, wd, ExtOp, ExtImm, func, sa); 

UC_componenta : UC_comp port map(RegDst, ExtOp, ALUSrc, Branch, Jump, ALUOp, MemWrite, MemtoReg, RegWrite, Instr);



--alu1: ALU port map (start,cnt,output1);

--R_D<=ROM(conv_integer(cnt));

process(sw(7), PC1, Instr)
begin
  if sw(7) = '1' then
      SMux <= PC1;
   else
       SMux <= Instr;
    end if;
end process;

led<=cnt;

with sw(2 downto 0) select
digits<= instr when "000",
        nextInstr when "001",
      --  rd1 when "010",
      --  rd2 when "011",
      --  ALUOut when "100",
      --  Ext_Imm when "101",
      --  MemData when "110",
        --BranchAddress when "111",
      -- WriteData when "111",
        (others => 'X') when others;
         display : SSD port map (clk,digits,cat,an);

--wd <= rd1 + rd2;

--Ext_func <= "0000000000000" & func;
--Ext_sa <= "000000000000000" & sa;

--with sw(7 downto 5) select
--    digits <= Instr when "000", PC1 when "001", rd1 when "010", rd2 when "011", wd when "100", ExtImm when "101", Ext_func when "110", Ext_sa when "111", (others => 'X') when others;
 
led(10 downto 0) <= ALUOp & RegDst & ExtOp & ALUSrc & Branch & Jump & MemWrite & MemtoReg & RegWrite;

--led(12 downto 0) <= PCSrc & Zero & AluOp & RegDst & ExtOp & ALUSrc & Branch & Jump & MemWrite& MemtoReg& RegWrite;
end Behavioral;
