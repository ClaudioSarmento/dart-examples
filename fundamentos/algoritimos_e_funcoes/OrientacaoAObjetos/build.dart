// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 03 - Construtores
// ==========================================

/* 
  O QUE SÃO CONSTRUTORES?
  Criar um objeto vazio e preencher linha por linha (jogador.nome = "X";) dá 
  muito trabalho. O Construtor é uma "esteira de fábrica" que já entrega o 
  objeto montado, exigindo que você passe os dados logo na criação!
*/

class ArenaEsportiva {
  String nome;
  String cidade;
  bool possuiIluminacao;

  // Este é o Construtor! Ele tem o MESMO NOME da classe.
  // Usamos os parâmetros nomeados {} para ficar organizado, igual fazemos no Flutter.
  // A palavra 'required' diz que é obrigatório informar esse dado ao construir.
  ArenaEsportiva({
    required this.nome, 
    required this.cidade, 
    this.possuiIluminacao = false // Valor padrão caso ninguém informe
  });

  void exibirDetalhes() {
    print("Arena: $nome | Local: $cidade | Jogos Noturnos: ${possuiIluminacao ? 'Sim' : 'Não'}");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Agora construímos a Arena em uma única etapa, passando os dados!
  ArenaEsportiva arenaLocal = ArenaEsportiva(
    nome: "Arena 847",
    cidade: "Serra - ES",
    possuiIluminacao: true,
  );

  arenaLocal.exibirDetalhes();

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma classe 'InimigoRPG'.
    2. Adicione os atributos: nome (String) e vida (int).
    3. Crie um construtor que já receba o nome e a vida do inimigo na criação.
    4. No main(), crie 2 inimigos diferentes usando o seu construtor em uma linha só.
  */
}