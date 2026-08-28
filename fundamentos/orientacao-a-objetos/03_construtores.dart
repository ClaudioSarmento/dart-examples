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

  // Este é o Construtor! Ele tem o MESMO NOME da classe.
  // Usamos os parâmetros nomeados {} para ficar organizado, igual fazemos no Flutter.
  // A palavra 'required' diz que é obrigatório informar esse dado ao construir.


void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Agora construímos a Arena em uma única etapa, passando os dados
  

InimigoRPG inimigo1 = InimigoRPG(
    nome: "Cronus",
    vida: 5,
  );
 
   InimigoRPG inimigo2 = InimigoRPG(
    nome: "Zeus",
    vida: 9,
  );

  inimigo1.exibirDetalhes();
  inimigo2.exibirDetalhes();

}
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
class InimigoRPG {
  String nome;
  int vida;


  InimigoRPG({
    required this.nome, 
    required this.vida, 
    
  });

 void exibirDetalhes() {
    print("Inimigo: $nome | Vida: $vida }");
  }
   
}
