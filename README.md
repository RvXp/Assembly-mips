<h1 align="center"> Assembly-mips </h1>

> Status : Concluído ✔️

## Descrição
Este repositório tem como foco apresentar uma coletânea de problemas e algoritmos solucionados em Assembly MIPS.

- ### Desenvolvimento
  As soluções apresentadas foram desenvolvidas utilizando o simulador [MARS](https://courses.missouristate.edu/KenVollmar/mars/) durante o meu período como monitor da disciplina de Arquitetura e Organização de Computadores na [UFU](https://www.ufu.br) (Universidade Federal de Uberlândia) Campus Monte Carmelo, tendo como orientador o professor [Diego Nunes Molinos](http://lattes.cnpq.br/2451163675391898).

- ### Objetivo
  O objetivo desta coletânea é auxiliar os alunos da disciplina a obterem um melhor entendimento das questões que envolvem o conjunto de instruções da arquitetura ([ISA](https://www.cs.cmu.edu/afs/cs/academic/class/15740-f97/public/doc/mips-isa.pdf)) e a linguagem de descrição de comportamento Assembly.

### Problemas
Aqui segue uma descrição dos problemas resolvidos:

> **Problema 1**: O código a seguir em Assembly MIPS implementa um gerador de números pseudoaleatórios utilizando um método simples baseado em multiplicação e soma, técnica conhecida como Linear Congruential Generator (LCG). Esse método é amplamente utilizado para gerar sequências que aparentam ser aleatórias, embora sejam determinísticas, ou seja, a partir de um número inicial (a semente), ele segue uma sequência pré-definida.

> Na lógica do código, temos três componentes essenciais:
> 1. **Semente** (Seed): Valor inicial fornecido ao gerador para iniciar a sequência. A partir dessa semente, os próximos valores da sequência são calculados.
> 2. **Multiplicador**: Um valor constante que é utilizado para multiplicar a semente atual e gerar o próximo número.
> 3. **Incremento**: Um valor constante que é adicionado após a multiplicação para modificar o resultado e evitar ciclos curtos.

> A fórmula utilizada para o cálculo do próximo elemento é:

> <p align="center"><strong>próximo valor = (a * semente + c) mod m</strong></p>

> Onde:
> - a é o multiplicador
> - c é o incremento
> - m é o módulo utilizado para limitar o valor da sequência

> Cada vez que a função do gerador é chamada, o próximo número pseudoaleatório é gerado e armazenado para uso futuro. Esse código pode ser utilizado em várias aplicações, como simulações e jogos, onde não há necessidade de números verdadeiramente aleatórios, mas onde a aleatoriedade aparente é suficiente.

Para acessar a solução deste problema, clique [aqui]().
> **Problema 2**: O código apresentado a seguir implementa o algoritmo de ordenação [Bubble Sort](https://www.geeksforgeeks.org/bubble-sort-algorithm/), que percorre repetidamente uma lista, comparando elementos adjacentes e trocando-os se o elemento a direita for maior que o elemento a esquerda. Esse é um dos algoritmos de ordenação clássicos, e mesmo sendo visto como ineficiente atualmente ainda sim é muito presente no campo acadêmico para o aprendizado de conceitos fundamentais.


> A partir de um vetor de inteiros predefinidos são executa as seguinte operações :


> 1. É realizado inicialmente um setup para controle dos índices utilizados no processo de repetição.
> 2. O loop externo percorre o vetor múltiplas vezes, atualizando os valores necessários para o loop interno.
> 3. O loop interno percorre o vetor realizando as comparações.
> 4. Caso seja necessário uma troca, o label if possui as operações de troca e de atualização na memoria.
> 5. Por fim o vetor ordenado é exibido.

> A lógica por trás do código também mostra como o Assembly manipula diretamente os valores na memória, movendo elementos de um vetor e trocando-os conforme necessário.

Para acessar a solução deste problema, clique [aqui](https://github.com/RvXp/Assembly-mips/blob/main/bubble.asm).

> **Problema 3**: O código apresentado a seguir implementa o algoritmo de [Busca Binaria](https://www.geeksforgeeks.org/binary-search/), que a partir de um vetor ordenado o algoritmo realiza operação de divisão e comparações para buscar um valor. O algoritmo utiliza de duas variáveis (início e fim) para definir um valor central que é comparado com o valor a ser buscado, e partir disso, caso seja necessário os valores de início e fim são redefinidos e o processo se repete.

> A partir de um vetor de inteiros ordenados e predefinido são executas as seguintes operações:

>  1. Inicialmente é realizado um setup para popular os registradores utilizados para controle da busca.
>  2. O processo de busca se inicia reajustando a escala.
>  3. Posteriormente é feito as comparações necessárias para verificar se o valor foi encontrado ou não.
>  4. Caso seja encontrado é exibida a posição em que o valor se encontra.
>  5. Caso o contrário os valores de início e fim são reajustados para realizar a operação novamente, até que o "início" seja maior que o "fim".
>  6. Caso isso ocorra uma mensagem informando que o valor não foi encontrado é exibida.

> Essa implementação realiza a busca em um vetor fixo de cinco elementos, onde cada posição da memória do vetor é manipulada com operações de divisão e multiplicação para garantir o correto endereçamento de memória.

Para acessar a solução deste problema, clique [aqui](https://github.com/RvXp/Assembly-mips/blob/main/busca_binaria.asm).
