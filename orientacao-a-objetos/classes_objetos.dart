// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 01 - Classes e Objetos
// ==========================================

/* 
  O QUE SÃO CLASSES E OBJETOS?
  Até agora, nossas variáveis ficavam soltas. Se quiséssemos criar um jogador, 
  teríamos que criar 3 variáveis: nome, idade, pontuacao. Para 10 jogadores, 
  seriam 30 variáveis!
  
  - CLASSE: É a "planta" (o molde). Ela diz: "Todo jogador DEVE ter nome, idade e pontos".
  - OBJETO: É o jogador de carne e osso, construído a partir do molde.
*/

// 1. Criando o Molde (Classe)
class Jogador {
  // Características (Atributos) que todo jogador terá
  String nome = "";
  int idade = 0;
  int pontos = 0;
}

class Aplicativo {
  String nome = "";
  int downloads = 0;
  bool gratuito = false;
}
void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  /*
  // 2. Construindo Objetos a partir do molde
  Jogador jogador1 = Jogador(); // O () significa: "Construa um novo para mim"
  jogador1.nome = "Felipe";
  jogador1.idade = 16;
  jogador1.pontos = 150;

  Jogador jogador2 = Jogador();
  jogador2.nome = "Ana";
  jogador2.idade = 17;
  jogador2.pontos = 320;

  print("O jogador ${jogador1.nome} tem ${jogador1.pontos} pontos.");
  print("A jogadora ${jogador2.nome} está ganhando com ${jogador2.pontos} pontos!");
*/
  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Fora do main(), crie uma classe chamada 'Aplicativo'.
    2. Coloque nela os atributos: nome (String), downloads (int) e gratuito (bool).
    3. Dentro do main(), crie um objeto com o seu app favorito, preencha os 
       dados dele e imprima na tela.
  */

 
  Aplicativo aplicativo = Aplicativo();

  aplicativo.nome = "WhatsApp";
  aplicativo.downloads = 670000;
  aplicativo.gratuito = false;
 
 

  print("Aplicativo: ${aplicativo.nome}");
  print("Downloads: ${aplicativo.downloads}");
  print("É gratuito? ${aplicativo.gratuito}");
}

