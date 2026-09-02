// INTERFACE: O Contrato. 
// Nem todo personagem tem poder mágico, mas os que tiverem, DEVEM usar essa interface.
abstract class Magia {
  void usarPoderMagico();
}

// CLASSE ABSTRATA: O molde principal.
abstract class Campeao {
  String nome;
  int vidaMax;

  Campeao(this.nome, this.vidaMax);

  // Método comum que já vem pronto para os filhos
  void retornarParaBase() {
    print("🏃 $nome está retornando para curar na base...");
  }

  // Método abstrato: Cada filho vai bater de um jeito diferente (Polimorfismo)
  void ataqueBasico(); 
}

// CLASSE FILHA 1: O Tanque. Herda de Campeão, mas não assina o contrato de Magia.
class Tanque extends Campeao {
  int armadura;

  Tanque(String nome, int vidaMax, this.armadura) : super(nome, vidaMax);

  @override
  void ataqueBasico() {
    print("🛡️ $nome bate com o escudo! (Dano Físico)");
  }
}

// DESAFIO PARA OS ALUNOS AQUI:
/*
  CRIE A CLASSE FILHA 2: 'Mago'.
  1. A classe Mago deve estender (extends) de Campeao.
  2. Ela DEVE assinar o contrato (implements) de Magia.
  3. Você será obrigado a criar o construtor, sobrescrever (@override) o 
     'ataqueBasico' E TAMBÉM sobrescrever o 'usarPoderMagico'.
  4. Depois de criar, vá no main(), instancie o seu Mago e teste as duas habilidades!
*/
// [CÓDIGO DO ALUNO AQUI]


void main() {
  print("⚔️ BEM-VINDO À ARENA LEAGUE OF DART ⚔️\n");

  Tanque heroi1 = Tanque("Braum", 3500, 200);
  heroi1.ataqueBasico();
  heroi1.retornarParaBase();

  print("\n--- Teste do Mago ---");
  // Instancie e teste o Mago criado no desafio aqui!
}