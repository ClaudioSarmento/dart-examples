// ==========================================
// MÓDULO 2: ESTRUTURAS DE CONTROLE
// Aula 02 - For (Laço de Repetição)
// ==========================================

/* 
  O QUE É O FOR?
  Imagine que você precisa fazer 10 flexões na academia. Você não diz 
  "faço flexão, faço flexão..." 10 vezes. Você simplesmente conta de 1 a 10.
  O 'for' faz exatamente isso: repete um bloco de código um número específico de vezes.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Simulando uma ficha de treino em um app de academia
  String exercicio = "Agachamento";
  int totalRepeticoes = 5;

  print("Iniciando série de $exercicio:");

  // Anatomia do for: (onde começa; até onde vai; como ele anda)
  // i++ é a mesma coisa que i = i + 1
  for (int i = 1; i <= totalRepeticoes; i++) {
    print("Repetição número $i... Concluída!");
  }
  print("Série finalizada! Descanse.");

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie um 'for' que conte de 10 até 1 (Contagem regressiva de um foguete).
    2. Dica: você vai começar o i valendo 10, a condição será i >= 1, 
       e para diminuir você usa i-- (que significa i = i - 1).
    3. No final do 'for', imprima "Fogo!".
  */
  
  // Escreva seu código abaixo desta linha:
  String contagem = "Contagem de Fogos";
  int totalDeFogos = 10;
  int lancamento = 1;

  for (int i = 10; i >= 1; i--) {
    print("$contagem: $i...");
  }
  print("Fogo lançado com Sucessooooo");
  
} 