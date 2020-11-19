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
		pontosDeControleWIDTH : NATURAL := 12
	);
     port
    (
		  -------------IN-------------
		  clk              : in  STD_LOGIC;
		  -------------OUT------------
		  ULAout           : out STD_LOGIC_VECTOR(DATA_WIDTH_REG - 1 downto 0);
		  PCout            : out STD_LOGIC_VECTOR(ADDR_WIDTH_ROM - 1 downto 0); 
 		  MuxBEQout        : out STD_LOGIC_VECTOR(ADDR_WIDTH_ROM - 1 downto 0);
		  flagZeroOut      : out STD_LOGIC;
		  BEQOut           : out STD_LOGIC;
		  andOut           : out STD_LOGIC;
		  UlaAout, UlaBOut : out STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0)
    );
end entity;

architecture comportamento of FDMIPS is
	SIGNAL somaPCSignal, PCROMSignal, BeqFetchSignal,MuxPCSignal, somaSOMADORMUXSignal: STD_LOGIC_VECTOR(ADDR_WIDTH_ROM-1 downto 0);
	SIGNAL ULAMuxSignal,MuxRegsSignal  : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	SIGNAL RegAUlaASignal, RegBMuxSignal, MuxUlaBSiginal: STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	SIGNAL muxBCREGsignal: STD_LOGIC_VECTOR(ADDR_WIDTH_REG-1 downto 0);
	SIGNAL seletorBranchSignal,flagZeroUlaSignal: STD_LOGIC;
	SIGNAL RAMOutSignal, OutMuxULARamSignal: STD_LOGIC_VECTOR(DATA_WIDTH_RAM-1 downto 0);
	
	SIGNAL pontosDeControleSignal: STD_LOGIC_VECTOR(pontosDeControleWIDTH-1 downto 0);
	
	SIGNAL imediatoEstendido     : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	
	SIGNAL concatenadoJMP        : STD_LOGIC_VECTOR(DATA_WIDTH_REG-1 downto 0);
	
	SIGNAL ulaOP                 : STD_LOGIC_VECTOR(2 downto 0);
	
	
	SIGNAL BarramentoSignal: STD_LOGIC_VECTOR(ADDR_WIDTH_ROM-1 downto 0);
	ALIAS opCode    : STD_LOGIC_VECTOR(5 downto 0) IS BarramentoSignal(31 downto 26);
	ALIAS opCodeJmp : STD_LOGIC_VECTOR(3 downto 0) IS BarramentoSignal(31 downto 28);
	ALIAS enderecoA : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(25 downto 21);
	ALIAS enderecoB : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(20 downto 16);
	ALIAS enderecoC : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(15 downto 11);
	ALIAS shamt     : STD_LOGIC_VECTOR(4 downto 0) IS BarramentoSignal(10 downto  6);
	ALIAS funct     : STD_LOGIC_VECTOR(5 downto 0) IS BarramentoSignal( 5 downto  0);
	ALIAS imediato  : STD_LOGIC_VECTOR(IMEDIATO_WIDTH-1 downto 0) IS BarramentoSignal(IMEDIATO_WIDTH-1 downto 0);
	ALIAS imedJmp   : STD_LOGIC_VECTOR(IMEDJMP_WIDTH -1 downto 0) IS BarramentoSignal(IMEDJMP_WIDTH -1 downto 0);
	
	
   ALIAS selMuxFecth       : STD_LOGIC IS pontosDeControleSignal(11);
	ALIAS BNE               : STD_LOGIC IS pontosDeControleSignal(10);
   ALIAS BEQ               : STD_LOGIC IS pontosDeControleSignal(9);
   ALIAS selUlaRam         : STD_LOGIC IS pontosDeControleSignal(8);
   ALIAS selMuxRegImed     : STD_LOGIC IS pontosDeControleSignal(7);
   ALIAS selMuxRegs        : STD_LOGIC IS pontosDeControleSignal(6);
	ALIAS escreveC          : STD_LOGIC IS pontosDeControleSignal(5);
	ALIAS ctrlUlaUC         : STD_LOGIC_VECTOR(2 downto 0) IS pontosDeControleSignal(4 downto 2);
	ALIAS wr                : STD_LOGIC IS pontosDeControleSignal(1);
	ALIAS rd                : STD_LOGIC IS pontosDeControleSignal(0);

    BEGIN
		 PC : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => ADDR_WIDTH_ROM
        )
        PORT MAP(
            DIN    => MuxPCSignal,
            DOUT   => PCROMSignal,
            ENABLE => '1',
            CLK    => clk,
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
				saida_MUX    => MuxPCSignal
        );
		  
		  concatenadoJMP <= opCodeJmp & imedJmp & "00"; --Contatenad~ao tenebroso
		  
		 BancoRegistradores : ENTITY work.bancoRegistradores
        GENERIC MAP(
		  larguraDados => DATA_WIDTH_REG,
		  larguraEndBancoRegs => ADDR_WIDTH_REG
		  )
        PORT MAP(
            clk              => clk,
            enderecoA        => enderecoA,
				enderecoB        => enderecoB,
				enderecoC        => muxBCREGsignal,
            dadoEscritaC     => OutMuxULARamSignal,
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
				ulaOp => ulaOP
			);
			
		 RAM : ENTITY work.RAMMIPS
        GENERIC MAP(
            dataWidth => DATA_WIDTH_RAM,
				addrWidth => ADDR_WIDTH_RAM
        )
        PORT MAP(
			 clk => clk,      
          Endereco => ULAMuxSignal,
          Dado_in     => RegBMuxSignal,
			 Dado_out    => RAMOutSignal,
			 we          => '0'
        );

		
		  ULAout <= ULAMuxSignal;
		  PCout  <= PCROMSignal;
		  MuxBEQout <= somaSOMADORMUXSignal;
		  flagZeroOut <= flagZeroUlaSignal;
		  BEQOut    <= BEQ;
		  andOut    <= seletorBranchSignal;
		  UlaAout <= RegAUlaASignal;
		  UlaBout <= MuxUlaBSiginal;
		  
END architecture;