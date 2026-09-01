import 'dart:math';

class Personagem {
  String nome;
  int _pontosDeVida;

  Personagem(this.nome, this._pontosDeVida);

  int get vida {
    return _pontosDeVida;
  }

  set receberDano(int dano) {
    _pontosDeVida = _pontosDeVida - dano;
    if (_pontosDeVida < 0) {
      _pontosDeVida = 0;
    }
  }

  void usarHabilidade() {
    print("$nome olhou seriamente para o adversário.");
  }
}

class Guerreiro extends Personagem {
  int forcaFisica;

  Guerreiro(String nome, int vida, this.forcaFisica) : super(nome, vida);

  @override
  void usarHabilidade() {
    print("⚔️ $nome girou sua espada pesada causando $forcaFisica de dano físico!");
  }
}

class Mago extends Personagem {
  int poderMagico;

  Mago(String nome, int vida, this.poderMagico) : super(nome, vida);

  Mago.anciao({required String nomeAvo})
      : poderMagico = 100,
        super(nomeAvo, 40);

  @override
  void usarHabilidade() {
    print("🔥 $nome lançou uma Bola de Fogo de $poderMagico de poder mágico!");
  }
}

class Arqueiro extends Personagem {
  double precisao;
  double chanCrit; 
  int danoBase;
  int acrescDano;

  Arqueiro(
    String nome,
    int vida,
    this.precisao,
    this.chanCrit,
    this.danoBase,
    this.acrescDano,
  ) : super(nome, vida);

  @override
  void usarHabilidade() {
    Random random = Random();
    
    double sorteioPrecisao = random.nextDouble();
    double sorteioCritico = random.nextDouble();

    double limitePrecisao = precisao / 100;
    double limiteCritico = chanCrit / 100;


    if (sorteioPrecisao <= limitePrecisao) {

      if (sorteioCritico <= limiteCritico) {
        int danoTotal = danoBase + acrescDano;
        print("🎯 CRÍTICO! O arqueiro $nome disparou uma flecha mortal causando $danoTotal de dano!");
      } else {
        print("🏹 O arqueiro $nome acertou o disparo causando $danoBase de dano!");
      }
    } else {
      print("❌ O arqueiro $nome errou o disparo!");
    }
  }
}

class Arena {
  String nomeDaArena;
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

    for (int i = 0; i < lutadores.length; i++) {
      lutadores[i].usarHabilidade();
      print("   ❤️ Vida atual: ${lutadores[i].vida} HP\n");
    }
  }
}

void main() {
  Arena arenaCentral = Arena("Arena 847");
  print("");

  Guerreiro guerreiro1 = Guerreiro("Arthur", 120, 35);
  Mago mago1 = Mago("Merlin", 70, 60);
  Mago magoExperiente = Mago.anciao(nomeAvo: "Gandalf");

  Arqueiro arqu1 = Arqueiro("Robin", 90, 85.0, 40.0, 25, 20);

  arenaCentral.registrarLutador(guerreiro1);
  arenaCentral.registrarLutador(mago1);
  arenaCentral.registrarLutador(magoExperiente);
  arenaCentral.registrarLutador(arqu1);

  arenaCentral.iniciarApresentacao();

  print("===========================================");
  print("💥 TESTANDO DANO MAIOR QUE A VIDA");
  print("===========================================");
  print("Vida do Arthur antes: ${guerreiro1.vida} HP");
 
  guerreiro1.receberDano = 200; 
  
  print("Vida do Arthur depois de tomar 200 de dano: ${guerreiro1.vida} HP");
}