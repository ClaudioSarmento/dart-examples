class Heroi {
  String nome;
  int hp;
  bool estaVivo = true;

  Heroi(this.nome, this.hp);

  void sofrerDano(int dano) {
    if (!estaVivo) return; // Se já morreu, ignora
    
    hp -= dano;
    if (hp <= 0) {
      hp = 0;
      estaVivo = false;
      print("☠️ $nome caiu em combate!");
    } else {
      print("$nome tomou $dano de dano. HP restante: $hp");
    }
  }
}

class GrupoDeRPG {
  List<Heroi> party = []; // Composição

  void recrutar(Heroi h) => party.add(h);

  // DESAFIO PARA OS ALUNOS:
  /*
    Crie o método 'receberDanoEmArea(int danoBolaDeFogo)'.
    1. Imprima "🐉 O Dragão cospe fogo no grupo inteiro!!"
    2. Crie um laço 'for' que passe por TODOS os heróis da 'party'.
    3. Para CADA herói, chame o método sofrerDano() dele, 
       passando o 'danoBolaDeFogo' como parâmetro.
  */
  // [CÓDIGO DO ALUNO AQUI]
}

void main() {
  GrupoDeRPG meuGrupo = GrupoDeRPG();
  
  meuGrupo.recrutar(Heroi("Guerreiro", 100));
  meuGrupo.recrutar(Heroi("Arqueiro", 60));
  meuGrupo.recrutar(Heroi("Mago", 40));

  print("Os heróis entram na caverna...\n");

  // meuGrupo.receberDanoEmArea(50); // O Mago deve morrer no primeiro hit!
  // print("\nO Dragão ataca de novo!\n");
  // meuGrupo.receberDanoEmArea(50); // O Arqueiro morre, Guerreiro fica com 0.
}