// CLASSE PAI NORMAL (Não é abstrata)
class Jogador {
  String nome;
  int folego;

  Jogador(this.nome, this.folego);

  // Método padrão
  void fazerJogada() {
    print("🏐 $nome passou a bola para o outro lado.");
    folego -= 5;
  }
}

// CLASSE FILHA 1 (Herança)
class Atacante extends Jogador {
  Atacante(String nome, int folego) : super(nome, folego);

  // Polimorfismo: O Atacante bate diferente!
  @override
  void fazerJogada() {
    print("🦈 $nome deu um PING NO FUNDO DA QUADRA! Ponto!");
    folego -= 15; // Cansa mais
  }
}

// DESAFIO 1 PARA OS ALUNOS:
/*
  Crie a classe 'Defensor' que herda de Jogador.
  Sobrescreva (@override) o método fazerJogada() para imprimir:
  "🛡️ [nome] salvou a bola de peito no limite da areia!"
  O folego deve diminuir em 10.
*/
// [CÓDIGO DO ALUNO AQUI]


class Equipe {
  String nomeEquipe = "";
  List<Jogador> atletas = []; // Composição/Agregação

  Equipe(this.nomeEquipe);

  void adicionarAtleta(Jogador j) {
    atletas.add(j);
  }

  void iniciarRali() {
    print("\n🔥 INICIANDO O RALI DA EQUIPE $nomeEquipe 🔥");
    
    // DESAFIO 2 PARA OS ALUNOS:
    /*
      Crie um laço 'for' para percorrer a lista 'atletas'.
      Para CADA atleta na lista, chame o método .fazerJogada().
      Depois, imprima quanto de fôlego sobrou para ele.
    */
    // [CÓDIGO DO ALUNO AQUI]
    for(int i = 0; i < atletas.length; i++){
      atletas[i].fazerJogada();
      print("O folego do atleta é ${atletas[i].folego}");
    }
    
  }
}

void main() {
  Equipe minhaEquipe = Equipe("Arena 847");
  minhaEquipe.nomeEquipe;


  Atacante jogador1 = Atacante("Marcos", 100);
  Jogador jogador3 = Jogador("Lucas (Iniciante)", 100);
  //Defensor jogador4 = Defensor("Roberto",80);


  minhaEquipe.adicionarAtleta(jogador1);
  minhaEquipe.adicionarAtleta(jogador3);
  //minhaEquipe.adicionarAtleta(jogador2);

  minhaEquipe.iniciarRali();

  List<String> nomes = ["Amanda","Ana","Jubileu","Guilherme"];

  print("O nome é: ${nomes[2]}");

  for(int i = 0; i < nomes.length; i++){
    print("O nome na posicao ${i} é ${nomes[i]}");
  }
}