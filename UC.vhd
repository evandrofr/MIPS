LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY UC IS
  PORT (
    opCode          : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    funct           : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    palavraControle : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	 
  );
END ENTITY;

ARCHITECTURE comportamento OF UC IS

  ALIAS selMuxFecth       : std_logic IS palavraControle(10);
  ALIAS BEQ               : std_logic IS palavraControle(9);
  ALIAS selUlaRam         : std_logic IS palavraControle(8);
  ALIAS selMuxRegImed     : std_logic IS palavraControle(7);
  ALIAS selMuxRegs        : std_logic IS palavraControle(6);
  ALIAS escreveC          : std_logic IS palavraControle(5);
  ALIAS operacoes         : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
  ALIAS rd                : std_logic IS palavraControle(1);
  ALIAS wr                : std_logic IS palavraControle(0);
    
  
  CONSTANT f_add : std_logic_vector(5 downto 0) := "100000";
  CONSTANT f_sub : std_logic_vector(5 downto 0) := "100010";
  CONSTANT f_and : std_logic_vector(5 downto 0) := "100100";
  CONSTANT f_or  : std_logic_vector(5 downto 0) := "100101";
  CONSTANT f_less: std_logic_vector(5 downto 0) := "101010";
  
  
  CONSTANT o_load:  std_logic_vector(5 downto 0) := "100011";
  CONSTANT o_beq:   std_logic_vector(5 downto 0) := "000100";
  CONSTANT o_jmp:   std_logic_vector(5 downto 0) := "000010";
  CONSTANT o_store: std_logic_vector(5 downto 0) := "101011";

  CONSTANT o_addi: std_logic_vector(5 downto 0) := "001000";
  CONSTANT o_ori:  std_logic_vector(5 downto 0) := "001101";
  CONSTANT o_andi: std_logic_vector(5 downto 0) := "001100";
  CONSTANT o_slti: std_logic_vector(5 downto 0) := "001010";

  
  CONSTANT ins_r : std_logic_vector(5 downto 0) := "000000";
  CONSTANT ins_j : std_logic_vector(5 downto 0) := "000010";
  SIGNAL   ins_i : std_logic;

BEGIN
	ins_i <= '1' WHEN (opCode = o_beq OR opCode = o_load OR opCode = o_jmp OR 
                      opCode = o_addi OR opCode = o_ori OR opCode = o_andi OR
                      opCode = o_slti) ELSE '0';
							 
	selMuxRegs    <= not ins_i;
	selMuxRegImed <= ins_i;
	

  escreveC <= '1' WHEN (opCode = ins_r OR opCode = o_load) ELSE '0';

  operacoes <= "000" WHEN opCode = ins_r AND funct = f_add  ELSE          -- add
				   "001" WHEN opCode = ins_r AND funct = f_sub  ELSE          -- sub
				   "010" WHEN opCode = ins_r AND funct = f_and  ELSE          -- and
				   "011" WHEN opCode = ins_r AND funct = f_or   ELSE          -- or
				   "100" WHEN opCode = ins_r AND funct = f_less ELSE          -- slt
				   "111";
					
					
	wr <= '1' WHEN opCode = o_store ELSE
   '0';
	 
	rd <= '1' WHEN opCode = o_load ELSE
   '0';
	
	
   BEQ <= '1' WHEN opCode = o_beq ELSE
   '0';
	
	selUlaRam <= '1' WHEN opCode = o_load ELSE
   '0';
	
	selMuxFecth <= '1' WHEN opCode = ins_j ELSE
   '0';

  
  
END ARCHITECTURE;