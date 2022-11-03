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

--component InstructionDecode is
-- Port (
--       CLK : in STD_LOGIC;
--       EN : in STD_LOGIC;
--       Instr : in STD_lOGIC_VECTOR(12 downto 0);
--       WD : in STD_lOGIC_VECTOR(15 downto 0);
--       RegWrite : in STD_LOGIC;
--       RegDst : in STD_LOGIC;
--       ExpOp : in STD_LOGIC;
--       RD1 : in STD_lOGIC_VECTOR(15 downto 0);
--       RD2 : in STD_lOGIC_VECTOR(15 downto 0);
--       Ext_Imm : out STD_lOGIC_VECTOR(15 downto 0);
--       func : out STD_lOGIC_VECTOR(2 downto 0);
--       sa : out STD_LOGIC        
--);
--end component;

component ID_comp
    Port ( clk: in STD_LOGIC;
           en: in STD_LOGIC;
           instr : in STD_LOGIC_VECTOR (12 downto 0);
               wa: in STD_LOGIC_VECTOR (2 downto 0);
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
         opcode : in std_logic_vector (2 downto 0);
         func : in std_logic_vector (2 downto 0));
end component;

component ALUMips is
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
end component;

component Memory is
Port ( 
    clk : in std_logic;
	MemWrite : in std_logic;
	en : in std_logic;
	ALURes : in std_logic_vector(15 downto 0);
	rd2 : in std_logic_vector(15 downto 0);
	MemData : out std_logic_vector(15 downto 0)
);
end component;


signal en:STD_LOGIC;
signal cnt:STD_LOGIC_VECTOR(15 downto 0);
signal start:STD_LOGIC_VECTOR(7 downto 0);
signal output1:STD_LOGIC_VECTOR(15 downto 0);

signal jumpAdr,branchAdr:STD_LOGIC_VECTOR(15 downto 0);
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
signal Jump,PCSrc: STD_LOGIC;
signal ALUOp: STD_LOGIC_VECTOR (2 downto 0);
signal ALURes: STD_LOGIC_VECTOR (15 downto 0);
signal MemWrite: STD_LOGIC;
signal MemtoReg: STD_LOGIC;
signal RegWrite: STD_LOGIC;
signal zero: STD_LOGIC;

signal Ext_func: STD_LOGIC_VECTOR (15 downto 0);
signal Ext_sa: STD_LOGIC_VECTOR (15 downto 0);
signal Memdata: STD_LOGIC_VECTOR (15 downto 0);

--IF id
signal If_ID_in: STD_LOGIC_VECTOR (31 downto 0);
signal If_ID_out: STD_LOGIC_VECTOR (31 downto 0);
signal NextInstr_out:  STD_LOGIC_VECTOR (15 downto 0);
signal instr_out:  STD_LOGIC_VECTOR (15 downto 0);


--ID/EX
signal  ID_ex_in : STD_LOGIC_VECTOR (78 downto 0);
signal  ID_ex_out : STD_LOGIC_VECTOR (78 downto 0);

signal MemtoReg_out_ID_EX: STD_LOGIC;
signal RegW_out_ID_EX: STD_LOGIC;
signal MemWrite_ID_EX: STD_LOGIC;
signal Branch_ID_EX: STD_LOGIC;
signal ALUOp_ID_EX: STD_LOGIC_VECTOR (2 downto 0);
signal ALUSrc_ID_EX: STD_LOGIC;
signal RegDst_ID_EX: STD_LOGIC;

signal NextInstr_out_ID_EX: STD_LOGIC_VECTOR (15 downto 0);
signal rd1_out_ID_EX: STD_LOGIC_VECTOR (15 downto 0);
signal rd2_out_ID_EX: STD_LOGIC_VECTOR (15 downto 0);
signal ExtImm_out_ID_EX: STD_LOGIC_VECTOR (15 downto 0);
signal rd_out_ID_EX: STD_LOGIC_VECTOR (2 downto 0);
signal rt_out_ID_EX: STD_LOGIC_VECTOR (2 downto 0);

signal mux_out_ID_EX: STD_LOGIC_VECTOR (2 downto 0);


--EX/MEM
signal EX_MEM_in : STD_LOGIC_VECTOR (55 downto 0);
signal EX_MEM_out : STD_LOGIC_VECTOR (55 downto 0);


signal MemtoReg_out_EX_MEM: STD_LOGIC;
signal RegW_out_EX_MEM: STD_LOGIC;
signal MemWrite_EX_MEM: STD_LOGIC;
signal Branch_EX_MEM: STD_LOGIC;
signal Branch_Address_EX_MEM: STD_LOGIC_VECTOR (15 downto 0);
signal zero_EX_MEM: STD_LOGIC;
signal ALURes_EX_MEM: STD_LOGIC_VECTOR (15 downto 0);
signal rd2_EX_MEM: STD_LOGIC_VECTOR (15 downto 0);
signal mux_out_EX_MEM: STD_LOGIC_VECTOR (2 downto 0);


--MEM/WB
signal MEM_WB_in : STD_LOGIC_VECTOR (36 downto 0);
signal MEM_WB_out : STD_LOGIC_VECTOR (36 downto 0);

signal MemtoReg_out_MEM_WB: STD_LOGIC;
signal RegW_out_MEM_WB: STD_LOGIC;
signal MemData_out_MEM_WB: STD_LOGIC_VECTOR (15 downto 0);
signal ALURes_out_MEM_WB: STD_LOGIC_VECTOR (15 downto 0);
signal WiteAddress_out_MEM_WB: STD_LOGIC_VECTOR (15 downto 0);



begin

If_ID_in (31 downto 16) <= NextInstr;
If_ID_in (15 downto 0) <= instr;


process(clk, en)
begin
 if rising_edge(clk) AND en='1' then
 If_ID_out <= If_ID_in;
 end if;
end process;

NextInstr_out <= If_ID_out (31 downto 16);
instr_out <= If_ID_out (15 downto 0);


ID_ex_in (78) <=  MemtoReg;
ID_ex_in (77) <= RegW;
ID_ex_in (76) <= MemWrite;
ID_ex_in (75) <= Branch;
ID_ex_in (74 downto 72) <= ALUOp;
ID_ex_in (71) <= ALUSrc;
ID_ex_in (70) <= RegDst;

ID_ex_in (69 downto 54) <= NextInstr_out;
ID_ex_in (53 downto 38) <= rd1;
ID_ex_in (37 downto 22) <= rd2;
ID_ex_in (21 downto 6) <= ExtImm;
ID_ex_in (5 downto 3) <= instr_out (9 downto 7); --asta ii rt de la muxu de regdst
ID_ex_in (2 downto 0) <= instr_out (6 downto 4); -- asta ii rd de la muxu de regdst


process(clk, en)
begin
 if rising_edge(clk) AND en='1' then
 ID_ex_out <= ID_ex_in;
 end if;
end process;

MemtoReg_out_ID_EX <= ID_ex_out(78);
RegW_out_ID_EX <= ID_ex_out(77);
MemWrite_ID_EX <= ID_ex_out(76);
Branch_ID_EX <= ID_ex_out(75);
ALUOp_ID_EX  <= ID_ex_out(74 downto 72);
ALUSrc_ID_EX <= ID_ex_out(71);
RegDst_ID_EX <= ID_ex_out(70);
 
NextInstr_out_ID_EX <= ID_ex_out(69 downto 54);
rd1_out_ID_EX <= ID_ex_out(53 downto 38);
rd2_out_ID_EX <= ID_ex_out(37 downto 22);
ExtImm_out_ID_EX <= ID_ex_out(21 downto 6);
rt_out_ID_EX <= ID_ex_out(5 downto 3);
rd_out_ID_EX <= ID_ex_out(2 downto 0);


EX_MEM_in (55) <= MemtoReg_out_ID_EX;
EX_MEM_in (54) <= RegW_out_ID_EX;
EX_MEM_in (53) <= MemWrite_ID_EX;
EX_MEM_in (52) <= Branch_ID_EX;
EX_MEM_in (51 downto 36) <= branchAdr;
EX_MEM_in (35) <= zero;
EX_MEM_in (34 downto 19) <= AluRes;
EX_MEM_in (18 downto 3) <= rd2_out_ID_EX;
EX_MEM_in (2 downto 0) <= mux_out_ID_EX;


process(clk, en)
begin
 if rising_edge(clk) AND en='1' then
 EX_MEM_out <= EX_MEM_in;
 end if;
end process;

MemtoReg_out_EX_MEM <= EX_MEM_out(55);
RegW_out_EX_MEM <= EX_MEM_out(54);
MemWrite_EX_MEM <= EX_MEM_out(53);
Branch_EX_MEM  <= EX_MEM_out(52);
Branch_Address_EX_MEM <= EX_MEM_out(51 downto 36);
zero_EX_MEM <= EX_MEM_out(35);
ALURes_EX_MEM <= EX_MEM_out(34 downto 19);
rd2_EX_MEM <= EX_MEM_out(18 downto 3);
mux_out_EX_MEM <= EX_MEM_out(2 downto 0);
---

MEM_WB_in (36) <= MemtoReg_out_EX_MEM;
MEM_WB_in (35) <= RegW_out_EX_MEM;
MEM_WB_in (34 downto 19) <= Memdata;
MEM_WB_in (18 downto 3) <= ALURes_EX_MEM;
MEM_WB_in (2 downto 0) <= mux_out_EX_MEM;


process(clk, en)
begin
 if rising_edge(clk) AND en='1' then
 MEM_WB_out <= MEM_WB_in;
 end if;
end process;


MemtoReg_out_MEM_WB <= MEM_WB_out (36);
RegW_out_MEM_WB  <= MEM_WB_out (35);
MemData_out_MEM_WB <= MEM_WB_out (34 downto 19);
ALURes_out_MEM_WB <= MEM_WB_out (18 downto 3);
WiteAddress_out_MEM_WB <= MEM_WB_out (2 downto 0);


mpg1 : MPG port map (btn(0),clk,en);
mpg2 : MPG port map (btn(1),clk,rst);
--ssd1 : SSD port map (clk,output1,cat,an);
instrF : InstructionF port map (jumpAdr,Branch_Address_EX_MEM,Jump,PCSrc,clk,rst,en,instr,NextInstr);

id_componenta : ID_comp port map (clk, en, instr_out(12 downto 0),WiteAddress_out_MEM_WB , RegW_out_MEM_WB, rd1, rd2, regDst, wd, ExtOp, ExtImm, func, sa); 

UC_componenta : UC_comp port map(RegDst, ExtOp, ALUSrc, Branch, Jump, ALUOp, MemWrite, MemtoReg, RegW, instr_out(15 downto 13),instr_out(2 downto 0));

ALUMips_componenta : ALUMips port map (rd1_out_ID_EX,AluRes,rd2_out_ID_EX,ExtImm_out_ID_EX,ALUSrc_ID_EX,sa,NextInstr_out_ID_EX,ALUOp_ID_EX,zero,branchAdr);

Memory_componenta : Memory port map (clk,MemWrite_EX_MEM,en,ALURes_EX_MEM,rd2_EX_MEM,Memdata);

jumpAdr<=NextInstr_out(15 downto 13)&instr_out(12 downto 0);
PCSrc<=zero_EX_MEM and Branch_EX_MEM;

with MemtoReg_out_MEM_WB select
wd <= MemData_out_MEM_WB when '1',
           ALURes_out_MEM_WB when '0',
           (others =>'X')when others;

with RegDst_ID_EX select
mux_out_ID_EX <= rd_out_ID_EX when '1',
           rt_out_ID_EX when '0',
           (others =>'X')when others;


with sw(2 downto 0) select
digits<= instr when "000",
        nextInstr when "001",
        rd1 when "010",
        rd2 when "011",
        ALURes when "100",
        ExtImm when "101",
        MemData when "110",
        branchAdr when "111",
      -- WriteData when "111",
        (others => 'X') when others;
         display : SSD port map (clk,digits,cat,an);


led(10 downto 0) <= ALUOp & RegDst & ExtOp & ALUSrc & Branch & Jump & MemWrite & MemtoReg & RegWrite;

--led(12 downto 0) <= PCSrc & Zero & AluOp & RegDst & ExtOp & ALUSrc & Branch & Jump & MemWrite& MemtoReg& RegWrite;
end Behavioral;
