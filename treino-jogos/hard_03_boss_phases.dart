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
     - Se a vidaAtual cair para MENOS da metade da vidaMax e 'faseDois' for false:
       Mude faseDois para true e imprima: "🔥 $nome se enfurece! Iniciando FASE 2!"
  4. Sobrescreva (@override) o método 'atacar()':
     - Se faseDois for true, imprima: "☄️ $nome conjura uma CHUVA DE METEOROS!"
     - Se false, use o ataque normal chamando super.atacar();
*/
// [CÓDIGO DO ALUNO AQUI]

void main() {
  // ChefeFinal lorde = ChefeFinal("Lorde das Cinzas", 100);
  // lorde.atacar(); // Fase 1
  // lorde.receberDano(60); // Vai ativar a Fase 2!
  // lorde.atacar(); // O ataque precisa ter mudado automaticamente!
}