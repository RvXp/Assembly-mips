<h1 align="center"> Assembly-mips </h1>

 > Status : Concluído  ✔️

 ## Descrição
   Este repositório tem como foco apresentar uma coletania de problemas e algoritmos solucionados em Assembly MIPS. 
   
  - ### Desenvolvimento
   As soluções apresentados foram desenvolvidos utilizando o simulador [MARS](https://courses.missouristate.edu/KenVollmar/mars/) durante o meu período como monitor da disciplina de Arquitetura e Organização de Computadores na [UFU](https://www.ufu.br) (Universidade Federal de Uberlândia) Campus Monte Carmelo, tendo como orientador o professor [Diego Nunes Molinos](http://lattes.cnpq.br/2451163675391898).
   
  - ### Objetivo
   O objetos desta coletania é auxiliar os alunos da disciplina a obterem um melhor entendimento das questões que envolvem o conjunto de instruções da arquitetura ([ISA](https://www.cs.cmu.edu/afs/cs/academic/class/15740-f97/public/doc/mips-isa.pdf)) e a linguagem de descrição de comportamento Assembly. 

### Problemas
Aqui segue uma descrição de um dos problemas resolvidos:

> **Problema 1**: O código a seguir implementa um gerador de números pseudoaleatórios utilizando um método simples baseado em multiplicação e soma, técnica conhecida como Linear Congruential Generator (LCG). Esse método é amplamente utilizado para gerar sequências que aparentam ser aleatórias, embora sejam determinísticas, ou seja, a partir de um número inicial (a semente), ele segue uma sequência pré-definida.

> Na lógica do código, temos três componentes essenciais:
> 1. **Semente** (Seed): Valor inicial fornecido ao gerador para iniciar a sequência. A partir dessa semente, os próximos valores da sequência são calculados.
> 2. **Multiplicador**: Um valor constante que é utilizado para multiplicar a semente atual e gerar o próximo número.
> 3. **Incremento**: Um valor constante que é adicionado após a multiplicação para modificar o resultado e evitar ciclos curtos.

> A formula utilizada para o calculo do próximo elemento é: <br>
> <p align="center"><strong>próximo valor = (a * semente + c) mod m</strong></p>

> Onde:
> + a é o multiplicador
> + c é o incremento
> + m é o modulo utilizado para limitar o valor da sequência

>   Cada vez que a função do gerador é chamada, o próximo número pseudoaleatório é gerado e armazenado para uso futuro. Esse código pode ser utilizado em várias aplicações, como simulações e jogos, onde não há necessidade de números verdadeiramente aleatórios, mas onde a aleatoriedade aparente é suficiente.


Para acessar a solução deste problema, clique [aqui](https://github.com/RvXp/Assembly-mips/blob/main/pseudoaleatorios.asm).

> **Problema 2**: O código apresentado a seguir implementa o algoritmo de ordenação [Bubble Sort](https://www.geeksforgeeks.org/bubble-sort-algorithm/), que percorre repetidamente uma lista, comparando elementos adjacentes e trocando-os se o elemento a direita for maior que o elemento a esquerda. Esse é um dos algoritmos de ordenação clássicos, e mesmo sendo visto como ineficiente atualmente ainda sim é muito presente no campo acadêmico para o aprendizado de conceitos fundamentais.


> A partir de um vetor de inteiros predefinidos e executa as seguinte operações :


> 1. É realizado inicialmentte um setup para controle dos indices utilizados no processo de repetição.
> 2. O loop externo percorre o vetor multipis vezes, atualizando os valores necessarios para o loop interno.
> 3. O loop interno percorre o vetor realizando as comparações.
> 4. Caso seja necessario uma troca, o label if possui as operações de troca e de atualização na memoria.
> 5. Por fim o vetor ordenado é exibido.

> A lógica por trás do código também mostra como o Assembly manipula diretamente os valores na memória, movendo elementos de um vetor e trocando-os conforme necessário.

Para acessar a solução deste problema, clique [aqui](https://github.com/RvXp/Assembly-mips/blob/main/bubble.asm).

