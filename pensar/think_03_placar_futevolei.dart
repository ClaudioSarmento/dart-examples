class TimeFutevolei {
  String nome;
  int pontosNoCampeonato = 0;
  int vitorias = 0;

  TimeFutevolei(this.nome);
}

class Partida {
  // A partida recebe os dois times que vão jogar
  TimeFutevolei timeA;
  TimeFutevolei timeB;

  Partida(this.timeA, this.timeB);

  // DESAFIO PARA OS ALUNOS:
  /*
    Crie um método chamado 'registrarResultado(int setsTimeA, int setsTimeB)'.
    
    Regras do Campeonato:
    1. Quem ganhar leva +3 na variável 'pontosNoCampeonato' e +1 em 'vitorias'.
    2. Faça um if/else comparando os sets:
       - Se setsTimeA for maior que setsTimeB: O time A ganha os pontos.
       - Se setsTimeB for maior que setsTimeA: O time B ganha os pontos.
       - Imprima quem foi o vencedor da partida.
  */
  // [CÓDIGO DO ALUNO AQUI]
}

void main() {
  TimeFutevolei dupla1 = TimeFutevolei("Talia e Marcos");
  TimeFutevolei dupla2 = TimeFutevolei("Lucas e Pedro");

  Partida jogoDeHoje = Partida(dupla1, dupla2);

  // O aluno vai testar o método aqui:
  // jogoDeHoje.registrarResultado(2, 1); // dupla1 deve ganhar os pontos
  
  print("\n--- TABELA DO CAMPEONATO ---");
  print("${dupla1.nome}: ${dupla1.pontosNoCampeonato} pts | Vitórias: ${dupla1.vitorias}");
  print("${dupla2.nome}: ${dupla2.pontosNoCampeonato} pts | Vitórias: ${dupla2.vitorias}");
}