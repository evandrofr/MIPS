
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
        -- Inicializa os endereços:
        tmp(0) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2 (t0(reg8) = 5 e t1(reg9) = 3)
        tmp(1) := "000000"&"01000"&"01001"&"01010"&"00000"&"100000"; -- add $t0 $t1 $t2 
		  tmp(2) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2  
        tmp(3) := "000000"&"01000"&"01001"&"01010"&"00000"&"100000"; -- add $t0 $t1 $t2 
		  tmp(4) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2
        return tmp;
    end initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);
	
	shared variable memROM: blocoMemoria := initMemory;

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;