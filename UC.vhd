LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY UC IS
  PORT (
    opCode          : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    funct           : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    palavraControle : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF UC IS

  ALIAS escreveC      : std_logic IS palavraControle(3);
  ALIAS operacoes     : std_logic_vector(2 DOWNTO 0) IS palavraControle(2 DOWNTO 0);

  CONSTANT f_add : std_logic_vector(5 downto 0) := "100000";
  CONSTANT f_sub : std_logic_vector(5 downto 0) := "100010";
  CONSTANT f_and : std_logic_vector(5 downto 0) := "100100";
  CONSTANT f_or  : std_logic_vector(5 downto 0) := "100101";
  CONSTANT f_less: std_logic_vector(5 downto 0) := "101010";
  
  CONSTANT ins_r : std_logic_vector(5 downto 0) := "000000";

BEGIN

  escreveC <= '1' WHEN opCode = ins_r ELSE '0';

  operacoes <= "000" WHEN opCode = ins_r AND funct = f_add  ELSE          -- add
				   "001" WHEN opCode = ins_r AND funct = f_sub  ELSE          -- sub
				   "010" WHEN opCode = ins_r AND funct = f_and  ELSE          -- and
				   "011" WHEN opCode = ins_r AND funct = f_or   ELSE          -- or
				   "100" WHEN opCode = ins_r AND funct = f_less ELSE          -- slt
				   "111";
  
  
END ARCHITECTURE;