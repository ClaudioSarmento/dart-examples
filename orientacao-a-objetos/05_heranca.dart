// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 05 - Herança (Extends)
// ==========================================

/* 
  O QUE É HERANÇA?
  Na vida real, filhos herdam características dos pais. Na programação, uma 
  Classe Filha pode herdar todos os atributos e métodos de uma Classe Pai.
  Isso evita que a gente fique repetindo código!
  Usamos a palavra 'extends' (estende) para criar essa relação.
*/

// Classe Pai (Superclasse)
class InimigoBase {
  String nome;
  int pontosDeVida;

  InimigoBase({required this.nome, required this.pontosDeVida});

  void sofrerDano(int dano) {
    pontosDeVida -= dano;
    print("$nome sofreu $dano de dano! Vida restante: $pontosDeVida");
  }
}

// Classe Filha (Subclasse): O Zumbi TEM TUDO que o InimigoBase tem, e mais um pouco!
class Zumbi extends InimigoBase {
  bool perdeuBraco = false; // Característica exclusiva do Zumbi

  // O 'super' repassa o nome e a vida para o construtor do Pai
  Zumbi({required String nome, required int pontosDeVida}) 
      : super(nome: nome, pontosDeVida: pontosDeVida);

  void morder() {
    print("$nome tentou dar uma mordida lenta!");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  Zumbi zumbiLento = Zumbi(nome: "Walker", pontosDeVida: 100);
  
  // O Zumbi sabe sofrer dano porque HERDOU do InimigoBase
  zumbiLento.sofrerDano(25);
  
  // E sabe morder porque é um método só dele
  zumbiLento.morder();

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma classe 'Veiculo' com a propriedade (parametro) 'velocidade' e um método 'acelerar()'.
    2. Crie uma classe 'Carro' que herda (extends) de 'Veiculo' e adicione 
       uma propriedade exclusiva chamada 'quantidadePortas'.
    3. Crie um carro no main(), acelere-o e imprima a quantidade de portas.
  */
}