// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 04 - Construtores Nomeados
// ==========================================

/* 
  O QUE SÃO CONSTRUTORES NOMEADOS?
  E se quisermos ter várias "esteiras de fábrica" diferentes para a mesma classe?
  Por exemplo, posso criar um usuário normal, mas posso ter um botão rápido 
  só para criar um "usuário administrador". 2
  No Flutter, usamos isso o tempo todo (ex: ListView e ListView.builder).

  ListView: 
  Quando você usa o ListView comum, o Flutter constrói e 
  desenha todos os objetos da lista imediatamente, 
  mesmo aqueles que estão escondidos lá no final da rolagem.
  Quando usar: Para listas pequenas e fixas, 
  onde você sabe exatamente quantos itens existem 
  (ex: uma tela de Configurações do app com 5 ou 6 opções).
  O problema: Se você tentar carregar um feed com 10.000 postagens, 
  o celular vai tentar renderizar as 10.000 de uma vez. O aplicativo vai travar e a memória vai acabar.

  ListView.builder
  O ListView.builder é inteligente. Ele funciona sob demanda 
  (um conceito chamado Lazy Loading). Ele só cria os objetos (widgets) 
  que estão visíveis na tela naquele exato momento.
  À medida que o usuário rola o dedo, ele constrói os novos itens e "destrói"
  ou recicla os que ficaram para trás. 
  Pense em como o Minecraft vai carregando o mapa (os blocos) apenas à medida que você anda para frente.
  Quando usar: Para listas gigantes, infinitas ou que vêm da internet 
  (ex: feed do Instagram, lista de vídeos do TikTok, chat do WhatsApp).
  A vantagem: Você pode ter uma lista com 1 milhão de itens, e o celular não vai travar, 
  pois ele só está lidando com os 5 ou 6 que cabem na tela de cada vez.
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
    print("$nome - $classe [$nivel]");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  String nome = "Claudio";
  nome.toLowerCase();

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