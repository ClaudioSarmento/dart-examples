// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 04 - Construtores Nomeados
// ==========================================

/* 
  O QUE SÃO CONSTRUTORES NOMEADOS?
  E se quisermos ter várias "esteiras de fábrica" diferentes para a mesma classe?
  Por exemplo, posso criar um usuário normal, mas posso ter um botão rápido 
  só para criar um "usuário administrador". 
  No Flutter, usamos isso o tempo todo (ex: ListView e ListView.builder).
*/

class Personagem {
  String nome;
  String classe;
  int nivel;

  // 1. Construtor Padrão
  Personagem({required this.nome, required this.classe, required this.nivel});

  // 2. Construtor Nomeado (Uma fábrica rápida de iniciantes)
  // Ele já força o nível a ser 1, sem perguntar para quem está criando.
  Personagem.iniciante({required this.nome, required this.classe}) : nivel = 1;

  // 3. Construtor Nomeado (Fábrica rápida de chefões)
  Personagem.chefeDaFase({required this.nome}) 
    : classe = "Boss", 
      nivel = 99;

  void mostrarStatus() {
    print("[$nivel] $nome - $classe");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  Personagem heroi = Personagem(nome: "Arthur", classe: "Arqueiro", nivel: 15);
  Personagem novato = Personagem.iniciante(nome: "Lucas", classe: "Guerreiro");
  Personagem vilao = Personagem.chefeDaFase(nome: "Rei Macabro");

  heroi.mostrarStatus();
  novato.mostrarStatus();
  vilao.mostrarStatus();

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma classe 'Carro' com modelo, marca e velocidadeAtual.
    2. Crie um construtor normal.
    3. Crie um construtor nomeado chamado 'Carro.parado' que receba 
       apenas o modelo e a marca, e já defina a velocidadeAtual como 0.
    4. Teste no main().
  */
}