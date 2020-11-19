
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port ( clk      : IN  STD_LOGIC;
          Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado     : OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0) );
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

--  signal memROM: blocoMemoria;
--  attribute ram_init_file : string;
--  attribute ram_init_file of memROM:
  --signal is "ROMcontent.mif";
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
--        -- Inicializa os endereços:
--        tmp(0) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2 (t0(reg8) = 5 e t1(reg9) = 3)
--        tmp(1) := "000000"&"01000"&"01001"&"01010"&"00000"&"100000"; -- add $t0 $t1 $t2 
--		  tmp(2) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2  
--        tmp(3) := "000000"&"01000"&"01001"&"01010"&"00000"&"100000"; -- add $t0 $t1 $t2 
--		  tmp(4) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2
		  
--		  tmp(0) :=  x"AC090008"; --sw $t1 8($zero)     (m(8) := 0x0000000A)
--        tmp(1) :=  x"8C080008"; --lw $t0 8($zero)     ($t0  := 0x0000000A)
--		  tmp(2) :=  x"012A4022"; --sub $t0 $t1 $t2     ($t0  := 0xFFFFFFFF)
--		  tmp(3) :=  x"012A4024"; --and $t0 $t1 $t2     ($t0  := 0x0000000A)
--		  tmp(4) :=  x"012A4025"; --or $t0 $t1 $t2      ($t0  := 0x0000000B)
--		  tmp(5) :=	 x"012A402A"; --slt $t0 $t1 $t2     ($t0  := 0x00000001)
--		  tmp(6) :=	 x"010A4020"; --add $t0 $t0 $t2     ($t0  := 0x0000000C)
--											--segunda execução:   ($t0 := 0x00000017)
--		  tmp(7) :=  x"110BFFFE"; --beq $t0 $t3 0xFFFE  (pc := #6)
--                               --segunda execução:   (pc := #8)
--		  tmp(8) :=  x"08000000"; --j 0x000000          (pc := #0)
--		  
		  
    tmp(0)    :=   x"AC090008"; --sw $t1 8($zero)     (m(8) := 0x0000000A)
    tmp(1)    :=   x"8C080008"; --lw $t0 8($zero)     ($t0 := 0x0000000A)
    tmp(2)    :=   x"012A4022"; --sub $t0 $t1 $t2     ($t0 := 0xFFFFFFFF)
    tmp(3)    :=   x"012A4024"; --and $t0 $t1 $t2     ($t0 := 0x0000000A)
    tmp(4)    :=   x"012A4025"; --or $t0 $t1 $t2      ($t0 := 0x0000000B)
    tmp(5)    :=   x"3C08FFFF"; --lui $t0 0xFFFF      ($t0 := 0xFFFF0000)
    tmp(6)    :=   x"2128000A"; --addi $t0 $t1 0x000A ($t0 := 0x00000014)
    tmp(7)    :=   x"31080013"; --andi $t0 $t0 0x0013 ($t0 := 0x00000010)
    tmp(8)    :=   x"35880007"; --ori $t0 $t4 0x0007  ($t0 := 0x0000000F)
    tmp(9)    :=   x"2928FFFF"; --slti $t0 $t1 0xFFFF ($t0 := 0x00000000)
    tmp(10)   :=   x"010A4020"; --add $t0 $t0 $t2     ($t0 := 0x0000000B)
										  --segunda execução ($t0 := 0x00000016)
    tmp(11)   :=   x"150DFFFE"; --bne $t0 $t5 0xFFFE  (pc := #10)
										  --segunda execução (pc := #12)
    tmp(12)   :=   x"012A402A"; --slt $t0 $t1 $t2     ($t0 := 0x00000001)
    tmp(13)   :=   x"010A4020"; --add $t0 $t0 $t2     ($t0 := 0x0000000C)
                                --segunda execução ($t0 := 0x00000017)
    tmp(14)   :=   x"110BFFFE"; --beq $t0 $t3 0xFFFE  (pc := #13)
	 tmp(15)   :=   x"08000000"; --j 0x000000          (pc := #0)
                                --segunda execução (pc := #15)
--    tmp(15)   :=   x"0C00001F"; --jal 0x00001F        (pc := #31)
--    tmp(17)   :=   x"08000000"; --j 0x000000          (pc := #0)
--    tmp(31)   :=   x"03E00008"; --jr $ra              (pc := #17)
         
		   
        return tmp;
    end initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);
	
	shared variable memROM: blocoMemoria := initMemory;

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;