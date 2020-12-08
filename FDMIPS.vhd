library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity FDMIPS is
	GENERIC (
		DATA_WIDTH_ROM : NATURAL := 32;
		ADDR_WIDTH_ROM : NATURAL := 32;
		DATA_WIDTH_RAM : NATURAL := 32;
		ADDR_WIDTH_RAM : NATURAL := 32;
		DATA_WIDTH_REG : NATURAL := 32;
		ADDR_WIDTH_REG : NATURAL := 5;
		IMEDIATO_WIDTH : NATURAL := 16;
		IMEDJMP_WIDTH  : NATURAL := 26;
		pontosDeControleWIDTH : NATURAL := 14
	);
     port
    (
		  -------------IN-------------
		  CLOCK_50   :  IN STD_LOGIC;
		  SW         :  IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		  -------------OUT------------
		  ULAout           : OUT STD_LOGIC_VECTOR(DATA_WIDTH_REG - 1 downto 0);
		  PCout            : OUT STD_LOGIC_VECTOR(ADDR_WIDTH_ROM - 1 downto 0); 
		  UlaAout, UlaBOut : OUT STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
		  
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end entity;

architecture comportamento of FDMIPS is
	SIGNAL somaPCSignal,somaOitoPCSignal, PCROMSignal, BeqFetchSignal,PCInSignal,normalPCSignal, somaSOMADORMUXSignal, dadoEscritaCSignal: STD_LOGIC_VECTOR(ADDR_WIDTH_ROM-1 downto 0);
	SIGNAL ULAMuxSignal : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	SIGNAL RegAUlaASignal, RegBMuxSignal, MuxUlaBSiginal: STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	SIGNAL muxBCREGsignal, mux31Out: STD_LOGIC_VECTOR(ADDR_WIDTH_REG-1 downto 0);
	SIGNAL seletorBranchSignal,flagZeroUlaSignal: STD_LOGIC;
	SIGNAL RAMOutSignal, OutMuxULARamSignal: STD_LOGIC_VECTOR(DATA_WIDTH_RAM-1 downto 0);
	
	SIGNAL pontosDeControleSignal: STD_LOGIC_VECTOR(pontosDeControleWIDTH-1 downto 0);
	
	SIGNAL imediatoEstendido     : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	
	SIGNAL concatenadoJMP        : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	
	SIGNAL ulaOP                 : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL selJMPR               : STD_LOGIC;
	
	SIGNAL displaySignal         : STD_LOGIC_VECTOR(23 DOWNTO 0);
	SIGNAL clkSignal             : STD_LOGIC;
	
	
	SIGNAL BarramentoSignal: STD_LOGIC_VECTOR(ADDR_WIDTH_ROM-1 downto 0);
	ALIAS opCode           : STD_LOGIC_VECTOR(5 downto 0) IS BarramentoSignal(31 downto 26);
	ALIAS opCodeJmp        : STD_LOGIC_VECTOR(3 downto 0) IS BarramentoSignal(31 downto 28);
	ALIAS enderecoA        : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(25 downto 21);
	ALIAS enderecoB        : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(20 downto 16);
	ALIAS enderecoC        : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(15 downto 11);
	ALIAS shamt            : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(10 downto  6);
	ALIAS funct            : STD_LOGIC_VECTOR(5 downto 0) IS BarramentoSignal( 5 downto  0);
	ALIAS imediato         : STD_LOGIC_VECTOR(IMEDIATO_WIDTH-1 downto 0) IS BarramentoSignal(IMEDIATO_WIDTH-1 downto 0);
	ALIAS imedJmp          : STD_LOGIC_VECTOR(IMEDJMP_WIDTH -1 downto 0) IS BarramentoSignal(IMEDJMP_WIDTH -1 downto 0);
	
	
	ALIAS selMux31         : STD_LOGIC IS pontosDeControleSignal(13);
	ALIAS selJMPAL         : STD_LOGIC IS pontosDeControleSignal(12);
   ALIAS selMuxFecth      : STD_LOGIC IS pontosDeControleSignal(11);
	ALIAS BNE              : STD_LOGIC IS pontosDeControleSignal(10);
   ALIAS BEQ              : STD_LOGIC IS pontosDeControleSignal(9);
   ALIAS selUlaRam        : STD_LOGIC IS pontosDeControleSignal(8);
   ALIAS selMuxRegImed    : STD_LOGIC IS pontosDeControleSignal(7);
   ALIAS selMuxRegs       : STD_LOGIC IS pontosDeControleSignal(6);
	ALIAS escreveC         : STD_LOGIC IS pontosDeControleSignal(5);
	ALIAS ctrlUlaUC        : STD_LOGIC_VECTOR(2 downto 0) IS pontosDeControleSignal(4 downto 2);
	ALIAS wr               : STD_LOGIC IS pontosDeControleSignal(1);
	ALIAS rd               : STD_LOGIC IS pontosDeControleSignal(0);

    BEGIN
	 	CLOCK : ENTITY work.scale_clock
			PORT MAP(
				 clk_50Mhz  => CLOCK_50,
				 rst        => '0',
				 clk_2Hz    => clkSignal
			);
	 
	 
	 
	 
	 
	 	MUXJMPR: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_ROM
		  )
		  PORT MAP(
            entradaA_MUX => normalPCSignal,
				entradaB_MUX => OutMuxULARamSignal,
				seletor_MUX  => selJMPR,
				saida_MUX    => PCInSignal
        );
	 
		somaOito : ENTITY work.somaConstante
		  GENERIC MAP(
            larguraDados => ADDR_WIDTH_ROM,
				constante    => 4
        )
        PORT MAP(
            entrada => PCROMSignal,
            saida   => somaOitoPCSignal
        );
	 
	 	 MUXJMPAL: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_ROM
		  )
		  PORT MAP(
            entradaA_MUX => OutMuxULARamSignal,
				entradaB_MUX => somaOitoPCSignal,
				seletor_MUX  => selJMPAL,
				saida_MUX    => dadoEscritaCSignal
        );
		 PC : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => ADDR_WIDTH_ROM
        )
        PORT MAP(
            DIN    => PCInSignal,
            DOUT   => PCROMSignal,
            ENABLE => '1',
            CLK    => clkSignal, --CLOCK_50,
            RST    => '0'
        );
		 MUXBEQ: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_ROM
		  )
		  PORT MAP(
            entradaA_MUX => somaPCSignal,
				entradaB_MUX => somaSOMADORMUXSignal,
				seletor_MUX  => seletorBranchSignal,
				saida_MUX    => BeqFetchSignal
        );
		  
		  
		  seletorBranchSignal <= (flagZeroUlaSignal and BEQ) or (not flagZeroUlaSignal and BNE);
		  
		  somaSHIFT : ENTITY work.somadorGenerico
			GENERIC MAP(
		  larguraDados => DATA_WIDTH_REG
		  )
        PORT MAP(
            entradaA => somaPCSignal,
				entradaB => imediatoEstendido(29 downto 0) & "00" ,
				saida    => somaSOMADORMUXSignal
        );
		  
		  
		  MUXBCREG3: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_REG
		  )
		  PORT MAP(
            entradaA_MUX => enderecoB,
				entradaB_MUX => enderecoC,
				seletor_MUX  => selMuxRegs,
				saida_MUX    => muxBCREGsignal
        );
		  
		 MUX31: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_REG
		  )
		  PORT MAP(
            entradaA_MUX => muxBCREGsignal,
				entradaB_MUX => "11111",
				seletor_MUX  => selMux31,
				saida_MUX    => mux31Out
        );
		  
		  
		 ROM : ENTITY work.ROMMIPS
        GENERIC MAP(
            dataWidth => DATA_WIDTH_ROM,
				addrWidth => ADDR_WIDTH_ROM
        )
        PORT MAP(
			 clk => clkSignal, --CLOCK_50,      
          Endereco => PCROMSignal,
          Dado     => BarramentoSignal
        );
		  
		somaQuatro : ENTITY work.somaConstante
		  GENERIC MAP(
            larguraDados => ADDR_WIDTH_ROM,
				constante    => 4
        )
        PORT MAP(
            entrada => PCROMSignal,
            saida   => somaPCSignal
        );
		  
		 MUXFETCH: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => ADDR_WIDTH_ROM
		  )
		  PORT MAP(
            entradaA_MUX => BeqFetchSignal,
				entradaB_MUX => concatenadoJMP, 
				seletor_MUX  => selMuxFecth,
				saida_MUX    => normalPCSignal
        );
		  
		  concatenadoJMP <= opCodeJmp & imedJmp & "00"; --Contatenad~ao tenebroso
		  
		 BancoRegistradores : ENTITY work.bancoRegistradores
        GENERIC MAP(
		  larguraDados => DATA_WIDTH_REG,
		  larguraEndBancoRegs => ADDR_WIDTH_REG
		  )
        PORT MAP(
            clk              => clkSignal, --CLOCK_50,
            enderecoA        => enderecoA,
				enderecoB        => enderecoB,
				enderecoC        => mux31Out,
            dadoEscritaC     => dadoEscritaCSignal,
            escreveC         => escreveC,
            saidaA           => RegAUlaASignal,
				saidaB           => RegBMuxSignal
				);
				
		MUXRegImed: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => DATA_WIDTH_REG
		  )
		  PORT MAP(
            entradaA_MUX => RegBMuxSignal,
				entradaB_MUX => imediatoEstendido,
				seletor_MUX  => selMuxRegImed,
				saida_MUX    => MuxUlaBSiginal
        );
				
		 ULA : ENTITY work.ULA
        GENERIC MAP(
            larguraDados => DATA_WIDTH_REG
        )
        PORT MAP(
            entradaA  => RegAUlaASignal,
            entradaB  => MuxUlaBSiginal,
            saida     => ULAMuxSignal,
            seletor   => ulaOP,
				flagZero => flagZeroUlaSignal
        );
		  
		MUXUlaRam: ENTITY work.muxGenerico2x1
        GENERIC MAP(
		  larguraDados => DATA_WIDTH_REG
		  )
		  PORT MAP(
            entradaA_MUX => ULAMuxSignal,
				entradaB_MUX => RAMOutSignal,
				seletor_MUX  => selUlaRam,
				saida_MUX    => OutMuxULARamSignal
        );
		  
		 Extensor : ENTITY work.estendeSinal
        GENERIC MAP(
            larguraDadosIn  => IMEDIATO_WIDTH,
				larguraDadosOut => DATA_WIDTH_REG
        )
        PORT MAP(
            entrada   => imediato,
            saida     => imediatoEstendido
        );
		  
		  
		UC : ENTITY work.UC
			PORT MAP(
				opCode => opCode,
				palavraControle => pontosDeControleSignal
			);
			
		ulaUC : ENTITY work.ulaUC
			PORT MAP(
				ctrlUlaUC => ctrlUlaUC,
				funct => funct,
				ulaOp => ulaOP,
				selJMPR => selJMPR
			);
			
		 RAM : ENTITY work.RAMMIPS
        GENERIC MAP(
            dataWidth => DATA_WIDTH_RAM,
				addrWidth => ADDR_WIDTH_RAM
        )
        PORT MAP(
			 clk => clkSignal, --CLOCK_50      
          Endereco => ULAMuxSignal,
          Dado_in     => RegBMuxSignal,
			 Dado_out    => RAMOutSignal,
			 we          => '0'
        );

		
		  ULAout  <= ULAMuxSignal;
		  PCout   <= PCROMSignal;
		  UlaAout <= RegAUlaASignal;
		  UlaBout <= MuxUlaBSiginal;
		  
		  displaySignal <= PCROMSignal(23 downto 0) WHEN SW = "0" ELSE
		  ULAMuxSignal(23 downto 0);
		  
        DISPLAY0 : ENTITY work.conversorHex7Seg PORT MAP(dadoHex => displaySignal(3 downto 0),   saida7seg => HEX0);
        DISPLAY1 : ENTITY work.conversorHex7Seg PORT MAP(dadoHex => displaySignal(7 downto 4),   saida7seg => HEX1);
        DISPLAY2 : ENTITY work.conversorHex7Seg PORT MAP(dadoHex => displaySignal(11 downto 8),  saida7seg => HEX2);
        DISPLAY3 : ENTITY work.conversorHex7Seg PORT MAP(dadoHex => displaySignal(15 downto 12), saida7seg => HEX3);
        DISPLAY4 : ENTITY work.conversorHex7Seg PORT MAP(dadoHex => displaySignal(19 downto 16), saida7seg => HEX4);
        DISPLAY5 : ENTITY work.conversorHex7Seg PORT MAP(dadoHex => displaySignal(23 downto 20), saida7seg => HEX5);
		  
END architecture;