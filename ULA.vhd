library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic
    (
        larguraDados : natural := 8
    );
    port
    (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor  :  in STD_LOGIC_VECTOR(3 downto 0);
      saida    :  out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZero :  out std_logic
    );
end entity;

architecture comportamento of ULA is
  constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

   signal soma      : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_and    : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_or     : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_xor    : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_not    : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_slt    : STD_LOGIC_VECTOR((larguraDados-1) downto 0) := x"00000000";
	signal op_4sh    : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
	signal saidaSignal:STD_LOGIC_VECTOR((larguraDados-1) downto 0);

    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      op_and    <= entradaA and entradaB;
      op_or     <= entradaA or entradaB;
--      op_xor    <= entradaA xor entradaB;
      op_not    <= not entradaA;
		op_slt(0) <= subtracao(31); --Ultimo bit para verificar se é negativo.
		op_4sh    <= entradaB(15 downto 0) & x"0000";

      saidaSignal <= soma      when (seletor = "0000") else
                     subtracao when (seletor = "0001") else
                     op_4sh    when (seletor = "0010") else
                     entradaB  when (seletor = "0011") else
                     op_slt    when (seletor = "0100") else
                     op_not    when (seletor = "0101") else
                     op_and    when (seletor = "0110") else
                     op_or     when (seletor = "0111") else
							entradaA  when (seletor = "1000") else
                     entradaA;      -- outra opcao: saida = entradaA
	
	   flagZero <= '1' when unsigned(saidaSignal) = 0 else '0';
		
		saida <= saidaSignal;

	

end architecture;