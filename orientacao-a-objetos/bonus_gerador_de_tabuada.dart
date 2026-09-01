// ==========================================
// MÓDULO 2: ESTRUTURAS DE CONTROLE
// Aula 06 (Bônus) - Loops Aninhados e a Tabuada
// ==========================================

/* 
  LOOPS ANINHADOS (Um For dentro do outro)
  Às vezes, precisamos repetir uma repetição. Pense num treino de academia: 
  Você faz 3 SÉRIES. 
  Dentro de CADA série, você faz 10 REPETIÇÕES.
  
  Na programação, chamamos isso de "Loop Aninhado" (Nested Loop).
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  print("💪 INICIANDO O TREINO DE BÍCEPS\n");

  // O Loop de FORA controla as Séries (Vai rodar 3 vezes)
  for (int serie = 1; serie <= 3; serie++) {
    print("--- Início da Série $serie ---");
    
    // O Loop de DENTRO controla as Repetições (Vai rodar 5 vezes PARA CADA série)
    for (int rep = 1; rep <= 5; rep++) {
      print("  Levantou o peso: repetição $rep");
    }
    
    print("--- Descanso! ---\n");
  }

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO: O Gerador de Tabuada (1 ao 10)
    
    Seu objetivo é imprimir a tabuada completa, do 1 até o 10.
    A saída no terminal deve ficar parecida com isso:
    
    === TABUADA DO 1 ===
    1 x 1 = 1
    1 x 2 = 2
    ...
    1 x 10 = 10
    
    === TABUADA DO 2 ===
    2 x 1 = 2
    2 x 2 = 4
    ...
    (E assim por diante, até chegar no 10x10).
    
    DICAS:
    1. Você vai precisar de um 'for' para o número principal (de 1 a 10).
    2. Dentro dele, coloque outro 'for' para o multiplicador (de 1 a 10).
    3. Use a interpolação de strings ($) para deixar a impressão bem bonita!
  */
  
  // Escreva seu código abaixo desta linha:
  print("🧮 INICIANDO O GERADOR DE TABUADA...\n");

}