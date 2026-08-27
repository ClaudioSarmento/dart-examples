// ==========================================
// PROJETO PRÁTICO: REVISÃO MÓDULO 4 (OOP)
// O Torneio de Heróis
// ==========================================


// 1. CLASSE PAI E ENCAPSULAMENTO
class Personagem {
  String nome;
  
  // O underline (_) torna a vida PRIVADA. Ninguém pode ir lá e colocar vida = -500.
  int _pontosDeVida; 

  Personagem(this.nome, this._pontosDeVida);

  // GETTER: Permite que outros leiam a vida do personagem
  int get vida {
    return _pontosDeVida;
  }

  // SETTER: Protege a variável. Se o dano zerar a vida, não deixa ficar negativo.
  set receberDano(int dano) {
    _pontosDeVida = _pontosDeVida - dano;
    if (_pontosDeVida < 0) {
      _pontosDeVida = 0;
    }
  }

  // Método que será adaptado pelos filhos (Base para o Polimorfismo)
  void usarHabilidade() {
    print("$nome olhou seriamente para o adversário.");
  }
}

// 2. HERANÇA E POLIMORFISMO (Classe Filha 1)
class Guerreiro extends Personagem {
  int forcaFisica;

  // O 'super' envia o nome e a vida lá para a Classe Pai construir
  Guerreiro(String nome, int vida, this.forcaFisica) : super(nome, vida);

  @override // Sobrescrevendo a regra do Pai
  void usarHabilidade() {
    print("⚔️ $nome girou sua espada pesada causando $forcaFisica de dano físico!");
  }
}

// 3. HERANÇA E POLIMORFISMO (Classe Filha 2)
class Mago extends Personagem {
  int poderMagico;

  Mago(String nome, int vida, this.poderMagico) : super(nome, vida);

  // CONSTRUTOR NOMEADO: Uma fábrica rápida de Magos Anciões (Muita magia, pouca vida)
  Mago.anciao({required String nomeAvo}) : poderMagico = 100, super(nomeAvo, 40);

  @override
  void usarHabilidade() {
    print("🔥 $nome lançou uma Bola de Fogo de $poderMagico de poder mágico!");
  }
}

// 4. COMPOSIÇÃO E AGREGAÇÃO (Um objeto guardando outros objetos)
class Arena {
  String nomeDaArena;
  
  // A Arena é dona de uma Lista de Personagens (Agregação)
  List<Personagem> lutadores = [];

  Arena(this.nomeDaArena);

  void registrarLutador(Personagem lutador) {
    lutadores.add(lutador);
    print("📢 Inscrição confirmada: ${lutador.nome} entrou na $nomeDaArena!");
  }

  void iniciarApresentacao() {
    print("\n===========================================");
    print("🏟️ APRESENTAÇÃO DOS LUTADORES DA $nomeDaArena");
    print("===========================================");
    
    // O laço for vai passar por todos os guerreiros, magos, etc.
    for (int i = 0; i < lutadores.length; i++) {
      // O Polimorfismo brilha aqui! Cada um vai usar a habilidade do seu próprio jeito.
      lutadores[i].usarHabilidade();
      print("   ❤️ Vida atual: ${lutadores[i].vida} HP\n");
    }
  }
}


// ==========================================
// EXECUÇÃO DO PROGRAMA
// ==========================================
void main() {
  // 1. Criando o palco (Objeto Arena)
  Arena arenaCentral = Arena("Arena 847");
  print("");

  // 2. Criando os objetos
  Guerreiro guerreiro1 = Guerreiro("Arthur", 120, 35);
  Mago mago1 = Mago("Merlin", 70, 60);
  Mago magoExperiente = Mago.anciao(nomeAvo: "Gandalf"); // Usando o construtor nomeado

  // 3. Juntando as peças (Composição em ação)
  arenaCentral.registrarLutador(guerreiro1);
  arenaCentral.registrarLutador(mago1);
  arenaCentral.registrarLutador(magoExperiente);

  // 4. Chamando a ação principal
  arenaCentral.iniciarApresentacao();


  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS (DESAFIOS DE OOP)
  // ------------------------------------------
  /*
    DESAFIO 1: A Nova Classe!
    Crie uma nova classe chamada 'Arqueiro' que herda (extends) de Personagem.
    Ela deve ter um atributo 'precisao' (int). 
    Sobrescreva (@override) o método usarHabilidade para imprimir algo como:
    "🏹 [Nome] disparou uma flecha com [precisao]% de chance de acerto crítico!"
    Depois, adicione um Arqueiro na Arena no main().

    DESAFIO 2: Testando o Encapsulamento!
    No main(), tente usar a notação ponto para mudar a vida de um personagem 
    para um número negativo usando o setter, assim: 
    guerreiro1.receberDano = 200;
    Depois, imprima a vida dele. O seu setter deve ter protegido a variável e deixado a vida em 0, e não -80!
  */
}