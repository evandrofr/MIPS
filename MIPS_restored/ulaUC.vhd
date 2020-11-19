LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ulaUC IS
  PORT (
    ctrlUlaUC  : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    funct      : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    ulaOp      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF ulaUC IS

  CONSTANT f_add : std_logic_vector(5 downto 0) := "100000";
  CONSTANT f_sub : std_logic_vector(5 downto 0) := "100010";
  CONSTANT f_and : std_logic_vector(5 downto 0) := "100100";
  CONSTANT f_or  : std_logic_vector(5 downto 0) := "100101";
  CONSTANT f_slt : std_logic_vector(5 downto 0) := "101010";
  
BEGIN

  ulaOp <= "000" WHEN ctrlUlaUC = "00" ELSE
    "000" WHEN ctrlUlaUC = "10" AND funct = f_add ELSE
    "001" WHEN ctrlUlaUC = "01" ELSE
    "001" WHEN ctrlUlaUC = "10" AND funct = f_sub ELSE
    "110" WHEN ctrlUlaUC = "10" AND funct = f_and ELSE
    "111" WHEN ctrlUlaUC = "10" AND funct = f_or ELSE
    "100" WHEN ctrlUlaUC = "10" AND funct = f_slt ELSE
    "111";

END ARCHITECTURE;