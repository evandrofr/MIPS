# Projeto 2 - Design de Computadores
### Alunos: Evandro Romeiro, Michel José Moraes, Rodrigo de Jesus
<br />

Este projeto é um processador RISC de 32 bits, compatível com o MIPS DLX. </br>

Para teste o display de 7 segmentos mostra o valor do PC, ou o valor da ULA (Selecionado através do SWITCH 0).


### Switches
<ul>
  <li>SW 0: Muda o que é mostrado no display de 7 segmentos (ULA quando 0 / PC quando 1) </li>
</ul>


### Instruções:

#### Grupo A

##### As instruções de referência à memória:
<ul>

<li> Carrega palavra (load word: lw); </li>

<li> Armazena palavra (store word: sw). </li>

</ul>

##### As instruções lógico-aritméticas:
<ul>

<li> Soma (add); </li> 

<li> Subtração (sub); </li> 

<li> E lógico (AND); </li> 

<li> OU lógico (OR); </li> 

<li> Comparação menor que (set if less than: slt). </li> 

</ul>


##### As instruções de desvio:
<ul>
<li> Desvio se igual (branch equal: beq); </li>

<li> Salto incondicional (jump: j). </li>
</ul> 

#### Grupo B

##### A instrução de carga:
<ul>

<li> Carrega imediato para 16 bits MSB (load upper immediate: lui). </li> 
</ul>

#### As instruções lógico-aritméticas:
<ul>

<li> Soma com imediato (addi); </li> 

<li> E lógico com imediato (ANDI); </li> 

<li> OU lógico com imediato (ORI); </li> 

<li> Comparação menor que imediato (set if less than: slti). </li> 
</ul>

##### As instruções de desvio:
<ul>

<li> Desvio se não igual (branch not equal: bne); </li> 

<li> Salto e conecta (jump and link: jal); </li> 

<li> Salto por registrador (jump register: jr). </li> 

</ul>


