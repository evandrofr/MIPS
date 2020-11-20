LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ulaUC IS
  PORT (
    ctrlUlaUC  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    funct      : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    ulaOp      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	 selJMPR    : OUT STD_LOGIC
  );
END ENTITY;

ARCHITECTURE comportamento OF ulaUC IS

  CONSTANT f_add : std_logic_vector(5 downto 0) := "100000";
  CONSTANT f_sub : std_logic_vector(5 downto 0) := "100010";
  CONSTANT f_and : std_logic_vector(5 downto 0) := "100100";
  CONSTANT f_or  : std_logic_vector(5 downto 0) := "100101";
  CONSTANT f_slt : std_logic_vector(5 downto 0) := "101010";
  CONSTANT f_jr  : std_logic_vector(5 downto 0) := "001000";
  
BEGIN

  ulaOp <= "0000" WHEN ctrlUlaUC = "000" ELSE --ADD
			  "0001" WHEN ctrlUlaUC = "001" ELSE --SUB
           "0000" WHEN ctrlUlaUC = "010" AND funct = f_add ELSE
			  "0001" WHEN ctrlUlaUC = "010" AND funct = f_sub ELSE
		     "0110" WHEN ctrlUlaUC = "010" AND funct = f_and ELSE
			  "0111" WHEN ctrlUlaUC = "010" AND funct = f_or  ELSE
			  "0100" WHEN ctrlUlaUC = "010" AND funct = f_slt ELSE
			  "1000" WHEN ctrlUlaUC = "010" AND funct = f_jr  ELSE
			  "0111" WHEN ctrlUlaUC = "011" ELSE -- OR
			  "0100" WHEN ctrlUlaUC = "100" ELSE -- SLT
			  "0110" WHEN ctrlUlaUC = "101" ELSE -- AND
			  "0010" WHEN ctrlUlaUC = "110" ELSE -- 4SH
			  "1000" WHEN ctrlUlaUC = "111" ELSE -- ENTRADA A
			  "0111";
			  
	selJMPR <= '1' WHEN funct = f_jr ELSE '0';

END ARCHITECTURE;