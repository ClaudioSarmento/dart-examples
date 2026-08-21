// ==========================================
// MÓDULO 2: ESTRUTURAS DE CONTROLE
// Aula 03 - While (Enquanto)
// ==========================================

/* 
  O QUE É O WHILE?
  Diferente do 'for' (onde sabemos quantas vezes vamos repetir), o 'while' 
  repete algo ENQUANTO uma condição for verdadeira. Não sabemos exatamente 
  quando vai parar.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Uma partida de Futevôlei acaba quando um time chega a 18 pontos.
  int pontosTimeA = 14;
  int pontosTimeB = 17;

  print("Placar: Time A ($pontosTimeA) x Time B ($pontosTimeB)");
  
  // Enquanto nenhum dos times chegar a 18...
  while (pontosTimeA < 18 && pontosTimeB < 18) {
    print("A partida continua rolando na areia...");
    
    // Simulando o Time B marcando um ponto
    pontosTimeB++; 
    print("Ponto do Time B! Novo placar: A($pontosTimeA) x B($pontosTimeB)");
  }

  print("Fim de jogo!");

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma bateria de celular valendo 5 (int bateria = 5).
    2. Crie um 'while' que roda ENQUANTO a bateria for maior que 0.
    3. Dentro do while, imprima "Usando o celular... Bateria em $bateria%".
    4. Ainda dentro do while, diminua a bateria em 1 (bateria--).
    5. Fora do while, imprima "Celular descarregou!".
  */
  
  // Escreva seu código abaixo desta linha:
  
}