class Inimigo {
  String nome;
  int vidaMax;
  int vidaAtual;

  Inimigo(this.nome, this.vidaMax) : vidaAtual = vidaMax;

  void atacar() {
    print("🗡️ $nome ataca com um golpe normal.");
  }
}

// DESAFIO PARA OS ALUNOS:
/*
  1. Crie a classe 'ChefeFinal' que HERDA de Inimigo.
  2. Adicione uma variável booleana 'faseDois' começando como false.
  3. Crie um método 'receberDano(int dano)'. 
     - Subtraia o dano da vidaAtual.
     - Se a vidaAtual cair para MENOS da metade da vidaMax e 
     'faseDois' for false:
       Mude faseDois para true e imprima: "🔥 
       $nome se enfurece! Iniciando FASE 2!"
  4. Sobrescreva (@override) o método 'atacar()':
     - Se faseDois for true, imprima: "☄️ $nome conjura uma CHUVA DE METEOROS!"
     - Se false, use o ataque normal chamando super.atacar();
*/
// [CÓDIGO DO ALUNO AQUI]
// 1. A classe herda (extends) de Inimigo
class ChefeFinal extends Inimigo {
  // 2. Variável de controle da fase
  bool faseDois = false;

  // Construtor repassando os valores para a classe pai usando 'super'
  ChefeFinal(String nome, int vidaMax) : super(nome, vidaMax);

  // 3. Método para receber dano e calcular a mudança de fase
  void receberDano(int dano) {
    vidaAtual -= dano;
    print("💥 $nome recebeu $dano de dano! (Vida: $vidaAtual/$vidaMax)");

    // Se a vida atual for menor que a metade da vida máxima E ainda não estiver na fase 2
    if (vidaAtual < (vidaMax / 2) && faseDois == false) {
      faseDois = true;
      print("🔥 $nome se enfurece! Iniciando FASE 2!");
    }
  }

  // 4. Sobrescrevendo o ataque do Inimigo padrão
  @override
  void atacar() {
    if (faseDois == true) {
      print("☄️ $nome conjura uma CHUVA DE METEOROS!");
    } else {
      // Se for false, ele reaproveita o código de ataque original da classe pai
      super.atacar();
    }
  }
}
void main() {
  // ChefeFinal lorde = ChefeFinal("Lorde das Cinzas", 100);
  // lorde.atacar(); // Fase 1
  // lorde.receberDano(60); // Vai ativar a Fase 2!
  // lorde.atacar(); // O ataque precisa ter mudado automaticamente!
}