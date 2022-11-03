----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 10:17:21 PM
-- Design Name: 
-- Module Name: Memory - Behavioral
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

entity Memory is
Port ( 
    clk : in std_logic;
	MemWrite : in std_logic;
	en : in std_logic;
	ALURes : in std_logic_vector(15 downto 0);
	rd2 : in std_logic_vector(15 downto 0);
	MemData : out std_logic_vector(15 downto 0)
);
end Memory;

architecture Behavioral of Memory is

type ram_type is array (0 to 255) of std_logic_vector (15 downto 0);
	signal RAM: ram_type:=(
	x"0000",
	x"0002",
    x"0006",
    x"0003",
    x"000A",
    x"0008",
    x"0003",
    x"0000",
others =>x"0000");

begin

process (clk,ALURes)
	begin
	if rising_edge(clk) then
		if en = '1' then
			if MemWrite = '1' then
			RAM(conv_integer(ALURes)) <= rd2;
		end if;
	end if;
	end if;
		MemData <= RAM( conv_integer(ALURes));

end process;
end Behavioral;
