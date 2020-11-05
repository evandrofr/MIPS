library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity FDMIPS is
	GENERIC (
		DATA_WIDTH_ROM : NATURAL := 32;
		ADDR_WIDTH_ROM : NATURAL := 32;
		DATA_WIDTH_REG : NATURAL := 32;
		ADDR_WIDTH_REG : NATURAL := 5;
		pontosDeControleWIDTH : NATURAL := 4
	);
     port
    (
		  -------------IN-------------
		  clk              : in  STD_LOGIC;
		  -------------OUT------------
		  ULAout           : out STD_LOGIC_VECTOR(DATA_WIDTH_REG - 1 downto 0)
 		  
    );
end entity;

architecture comportamento of FDMIPS is
	SIGNAL somaPCSignal, PCROMSignal, muxPCSignal, somaSOMADORMUXSignal,SHIFTSOMADOR: STD_LOGIC_VECTOR(ADDR_WIDTH_ROM-1 downto 0);
	SIGNAL BarramentoSignal: STD_LOGIC_VECTOR(ADDR_WIDTH_ROM-1 downto 0);
	SIGNAL ULARegsSignal   : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	SIGNAL RegAUlaASignal, RegBUlaBSignal: STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	SIGNAL muxBCREGsignal: STD_LOGIC_VECTOR(ADDR_WIDTH_REG-1 downto 0);
	SIGNAL andCONTROLEZEROSignal, CONTROLEBC: STD_LOGIC;
	
	SIGNAL pontosDeControleSignal: STD_LOGIC_VECTOR(pontosDeControleWIDTH-1 downto 0);
	
	ALIAS opCode   : STD_LOGIC_VECTOR(5 downto 0) IS BarramentoSignal(31 downto 26);
	ALIAS enderecoA: STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(25 downto 21);
	ALIAS enderecoB: STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(20 downto 16);
	ALIAS enderecoC: STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(15 downto 11);
	ALIAS shamt    : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(10 downto  6);
	ALIAS funct    : STD_LOGIC_VECTOR(5 downto 0) IS BarramentoSignal( 5 downto  0);
	
	ALIAS escreveC: STD_LOGIC IS pontosDeControleSignal(3);
	ALIAS operacoes: STD_LOGIC_VECTOR(2 downto 0) IS pontosDeControleSignal(2 downto 0);

    BEGIN
		 PC : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => ADDR_WIDTH_ROM
        )
        PORT MAP(
            DIN    => muxPCSignal,
            DOUT   => PCROMSignal,
            ENABLE => '1',
            CLK    => clk,
            RST    => '0'
        );
		 MUXFETCH: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_ROM
		  )
		  PORT MAP(
            entradaA_MUX => somaPCSignal,
				entradaB_MUX => somaSOMADORMUXSignal,
				seletor_MUX  => andCONTROLEZEROSignal,
				saida_MUX    => muxPCSignal
        );
		  
		  somaSHIFT : ENTITY work.somadorGenerico
        PORT MAP(
            entradaA => somaPCSignal,
				entradaB => SHIFTSOMADOR,
				saida    => somaSOMADORMUXSignal
        );
		  
		  MUXBCREG3: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_REG
		  )
		  PORT MAP(
            entradaA_MUX => enderecoB,
				entradaB_MUX => enderecoC,
				seletor_MUX  => CONTROLEBC,
				saida_MUX    => muxBCREGsignal
        );
		  
		  
		 ROM : ENTITY work.ROMMIPS
        GENERIC MAP(
            dataWidth => DATA_WIDTH_ROM,
				addrWidth => ADDR_WIDTH_ROM
        )
        PORT MAP(
			 clk => clk,      
          Endereco => PCROMSignal,
          Dado     => BarramentoSignal
        );
		  
		somaUm : ENTITY work.somaConstante
		  GENERIC MAP(
            larguraDados => ADDR_WIDTH_ROM,
				constante => 1
        )
        PORT MAP(
            entrada => PCROMSignal,
            saida   => somaPCSignal
        );
		  
		 BancoRegistradores : ENTITY work.bancoRegistradores
        GENERIC MAP(
		  larguraDados => DATA_WIDTH_REG,
		  larguraEndBancoRegs => ADDR_WIDTH_REG
		  )
        PORT MAP(
            clk             => clk,
            enderecoA        => enderecoA,
				enderecoB        => enderecoB,
				enderecoC        => muxBCREGsignal,
            dadoEscritaC     => ULARegsSignal,
            escreveC         => escreveC,
            saidaA           => RegAUlaASignal,
				saidaB           => RegBUlaBSignal
				);
				
		 ULA : ENTITY work.ULA
        GENERIC MAP(
            larguraDados => DATA_WIDTH_REG
        )
        PORT MAP(
            entradaA  => RegAUlaASignal,
            entradaB  => RegBUlaBSignal,
            saida     => ULARegsSignal,
            seletor   => operacoes
        );
		  
	UC : ENTITY work.UC
		PORT MAP(
		opCode => opCode,
		funct  => funct,
		palavraControle => pontosDeControleSignal
		);

		
		  ULAout <= ULARegsSignal;
 
		  
END architecture;