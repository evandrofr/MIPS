LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ulaUC IS
  PORT (
    ctrlUlaUC  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
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

  ulaOp <= "000" WHEN ctrlUlaUC = "000" ELSE --ADD
			  "001" WHEN ctrlUlaUC = "001" ELSE --SUB
           "000" WHEN ctrlUlaUC = "010" AND funct = f_add ELSE
			  "001" WHEN ctrlUlaUC = "010" AND funct = f_sub ELSE
		     "110" WHEN ctrlUlaUC = "010" AND funct = f_and ELSE
			  "111" WHEN ctrlUlaUC = "010" AND funct = f_or ELSE
			  "100" WHEN ctrlUlaUC = "010" AND funct = f_slt ELSE
			  "111" WHEN ctrlUlaUC = "011" ELSE -- OR
			  "100" WHEN ctrlUlaUC = "100" ELSE -- SLT
			  "110" WHEN ctrlUlaUC = "101" ELSE -- AND
			  "010" WHEN ctrlUlaUC = "110" ELSE -- 4SH
			  "111";

END ARCHITECTURE;