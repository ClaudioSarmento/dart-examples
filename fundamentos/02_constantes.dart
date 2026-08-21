// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 02 - Constantes
// ==========================================

/* 
  O QUE SÃO CONSTANTES?
  Se uma variável é uma "caixa" onde o valor pode mudar, a constante é um cofre!
  Depois que você guarda um valor lá dentro, ele não pode mais ser alterado.
  Usamos 'const' ou 'final' para criar constantes.
  - const: O valor já é conhecido antes mesmo do programa rodar.
  - final: O valor é descoberto na hora que o programa roda, mas depois não muda mais.
*/

void main() {

  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Regras de uma partida de Futevôlei que não mudam
  const int maxJogadoresPorTime = 2;
  const String formatoQuadra = "Areia";
  
  print("O limite de jogadores é $maxJogadoresPorTime por time.");
  // Se tentarmos fazer: maxJogadoresPorTime = 3; -> O Dart vai dar erro!

  // Um valor final que é capturado na hora (hora do início da partida)
  final horaInicio;


  horaInicio = DateTime.now();


  print("A partida começou exatamente às: " + horaInicio.toString());

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    Pense em um jogo de videogame. Algumas coisas mudam (variáveis) e outras não (constantes).
    1. Crie uma variável (var) para a quantidade de "vidas" do jogador.
    2. Crie uma constante (const) para a quantidade "máxima de vidas" que o jogo permite.
    3. Imprima as duas informações no terminal.
  */
  
  // Escreva seu código abaixo desta linha:
  
}