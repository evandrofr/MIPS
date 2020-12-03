LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY UC IS
  PORT (
    opCode          : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    palavraControle : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	 
  );
END ENTITY;

ARCHITECTURE comportamento OF UC IS

  ALIAS selMux31          : std_logic IS palavraControle(13);
  ALIAS selJMPAL          : std_logic IS palavraControle(12);
  ALIAS selMuxFecth       : std_logic IS palavraControle(11);
  ALIAS BNE               : std_logic IS palavraControle(10);
  ALIAS BEQ               : std_logic IS palavraControle(9);
  ALIAS selUlaRam         : std_logic IS palavraControle(8);
  ALIAS selMuxRegImed     : std_logic IS palavraControle(7);
  ALIAS selMuxRegs        : std_logic IS palavraControle(6);
  ALIAS escreveC          : std_logic IS palavraControle(5);
  ALIAS ctrlUlaUC         : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
  ALIAS rd                : std_logic IS palavraControle(1);
  ALIAS wr                : std_logic IS palavraControle(0);
    
  
  CONSTANT o_load : std_logic_vector(5 downto 0) := "100011";
  CONSTANT o_beq  : std_logic_vector(5 downto 0) := "000100";
  CONSTANT o_bne  : std_logic_vector(5 downto 0) := "000101";
  CONSTANT o_jmp  : std_logic_vector(5 downto 0) := "000010";
  CONSTANT o_store: std_logic_vector(5 downto 0) := "101011";

  CONSTANT o_addi : std_logic_vector(5 downto 0) := "001000";
  CONSTANT o_ori  : std_logic_vector(5 downto 0) := "001101";
  CONSTANT o_andi : std_logic_vector(5 downto 0) := "001100";
  CONSTANT o_slti : std_logic_vector(5 downto 0) := "001010";
  CONSTANT o_lui  : std_logic_vector(5 downto 0) := "001111";
  
  CONSTANT o_jal  : std_logic_vector(5 downto 0) := "000011";

  
  CONSTANT ins_r  : std_logic_vector(5 downto 0) := "000000";
  CONSTANT ins_j  : std_logic_vector(5 downto 0) := "000010";
  SIGNAL   ins_i  : std_logic;

BEGIN
	ins_i <= '1' WHEN (opCode = o_store OR
                      opCode = o_load  OR
							 opCode = o_jmp   OR 
                      opCode = o_addi  OR
							 opCode = o_ori   OR
							 opCode = o_andi  OR
                      opCode = o_slti  OR
							 opCode = o_lui) ELSE '0';
							 
	selMuxRegs    <= not ins_i;
	selMuxRegImed <= ins_i;
	

  escreveC <= '1' WHEN (opCode = ins_r   OR
								opCode = o_load  OR
								opCode = o_lui   OR
								opCode = o_addi  OR
								opCode = o_slti  OR
								opCode = o_andi  OR
								opCode = o_jal   OR
								opCode = o_ori) ELSE '0';

  ctrlUlaUC <= "000" WHEN opCode = o_store ELSE
				   "000" WHEN opCode = o_load  ELSE
					"000" WHEN opCode = o_addi  ELSE
				   "001" WHEN opCode = o_beq   ELSE
					"001" WHEN opCode = o_bne   ELSE
				   "010" WHEN opCode = ins_r   ELSE
				   "011" WHEN opCode = o_ori   ELSE
					"100" WHEN opCode = o_slti  ELSE
				   "101" WHEN opCode = o_andi  ELSE
				   "110" WHEN opCode = o_lui   ELSE
					"111" WHEN opCode = o_jal   ELSE
				   "111";
					
					
	wr <= '1' WHEN opCode = o_store ELSE
   '0';
	 
	rd <= '1' WHEN opCode = o_load  ELSE
   '0';
	
	BNE <= '1' WHEN opCode = o_bne  ELSE
   '0';
	
   BEQ <= '1' WHEN opCode = o_beq  ELSE
   '0';
	
	selUlaRam <= '1' WHEN opCode = o_load ELSE
   '0';
	
	selMuxFecth <= '1' WHEN opCode = ins_j oR opCode = o_jal ELSE
   '0';
	
   selJMPAL <= '1' WHEN opCode = o_jal ELSE
	'0';
	
	selMux31 <= '1' WHEN opCode = o_jal ELSE
	'0';
  
  
END ARCHITECTURE;