library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity estendeSinal is
    generic
    (
        larguraDadosIn : natural := 16;
		  larguraDadosOut: natural := 32
		  
    );
    port
    (
        entrada :   in  STD_LOGIC_VECTOR((larguraDadosIn -1) downto 0);
        saida   :   out STD_LOGIC_VECTOR((larguraDadosOut-1) downto 0)
    );
end entity;

architecture comportamento of estendeSinal is
    begin
    process (entrada) is
    begin
            if (entrada(larguraDadosIn-1) = '1') then
                saida <= (larguraDadosOut-1 downto larguraDadosIn => '1') & entrada;
            else
                saida <= (larguraDadosOut-1 downto larguraDadosIn => '0') & entrada;
            end if;
    end process;
end architecture;