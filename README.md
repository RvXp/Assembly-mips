<h1 align="center"> Assembly-mips </h1>

 > Status : Concluido ✔️

 ## Descrição
   Este repositorio tem como foco apresentar uma coletania de problemas e algoritmos solucionados em Assembly MIPS. 
   
  - ### Desenvolvimento
   As soluções apresentados foram desenvolvidos utilizando o simludor [MARS](https://courses.missouristate.edu/KenVollmar/mars/) durante o meu periodo como monitor da disciplina de Arquitetura e Organização de Computadores na [UFU](https://www.ufu.br) (Universide Federal de Uberlândia) Campus Monte Carmelo, tendo como orientador o professor Diego Nunes Molinos.
   
  - ### Objetivo
   O objetos desta coletania é auxiliar os alunos da disciplina a obterem um melhor entendimento das questões que envolvem o conjunto de intruções da arquitetura ([ISA](https://www.cs.cmu.edu/afs/cs/academic/class/15740-f97/public/doc/mips-isa.pdf)) e a linguagem de descrição de comportamento Assembly. 

### Problemas
Aqui segue uma descrição de um dos problemas resolvidos:

> **Problema 1**: O código a seguir em Assembly MIPS implementa um gerador de números pseudoaleatórios utilizando um método simples baseado em multiplicação e soma, técnica conhecida como Linear Congruential Generator (LCG). Esse método é amplamente utilizado para gerar sequências que aparentam ser aleatórias, embora sejam determinísticas, ou seja, a partir de um número inicial (a semente), ele segue uma sequência pré-definida.

> Na lógica do código, temos três componentes essenciais:
> 1. **Semente** (Seed): Valor inicial fornecido ao gerador para iniciar a sequência. A partir dessa semente, os próximos valores da sequência são calculados.
> 2. **Multiplicador**: Um valor constante que é utilizado para multiplicar a semente atual e gerar o próximo número.
> 3. **Incremento**: Um valor constante que é adicionado após a multiplicação para modificar o resultado e evitar ciclos curtos.

> A formula utilizada para o calculo do proximo elemnto é: <br>
> <p align="center"><strong>próximo valor = (a * semente + c) mod m</strong></p>

> Onde:
> + a é o multiplicador
> + c é o incremento
> + m é o modulo utilizado para limitar o valor da sequencia

>   Cada vez que a função do gerador é chamada, o próximo número pseudoaleatório é gerado e armazenado para uso futuro. Esse código pode ser utilizado em várias aplicações, como simulações e jogos, onde não há necessidade de números verdadeiramente aleatórios, mas onde a aleatoriedade aparente é suficiente.


Para acessar a solução deste problema, clique [aqui](https://github.com/RvXp/Assembly-mips/blob/main/pseudoaleatorios.asm).
