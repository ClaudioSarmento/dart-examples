// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 01 - Variáveis
// ==========================================

/* 
  O QUE SÃO VARIÁVEIS?
  Imagine uma variável como uma "caixa" onde você guarda uma informação 
  para usar depois. No Dart, você pode criar uma variável usando a palavra 'var'.
  O Dart é inteligente e descobre sozinho o que tem dentro da caixa (texto, número, etc).
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Criando o perfil de um personagem de jogo
  var nomePersonagem = "Kratos";
  var nivel = 42;
  var moedasDeOuro = 1500.50;
  var temPocaoDeVida = true;

  print("Personagem: " + nomePersonagem);
  print("Nível atual: " + nivel.toString());

  // Mudando o valor da variável (o nível aumentou!)
  nivel = 43;
  print("Novo nível: " + nivel.toString());

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO 1:
    Crie variáveis para representar o seu aplicativo favorito (ex: TikTok, Instagram, Spotify).
    Você precisará guardar:
    - O nome do aplicativo
    - Quantos seguidores/amigos você tem
    - Se a sua conta é privada ou não (Dica: use true ou false)
    
    Depois, use o comando print() para mostrar essas informações no terminal!
  */
  
  // Escreva seu código abaixo desta linha: 

  var nomeTiktok = "Ana Luiza";
  var seguidores  = 517;
  var contaAberta = false;
  var tipoDeConta = "";

  print("Usuário: " + nomeTiktok);
  print("Seguidores atual: " + seguidores.toString());

  seguidores = 405;
  print("Seguidores antigo: " + seguidores.toString());

  if (contaAberta == true) {
    tipoDeConta = "conta Aberta";
  }
  else {
    tipoDeConta = "conta não privada";
  }
 
  print("Tipo de conta: " + tipoDeConta);
 




}

