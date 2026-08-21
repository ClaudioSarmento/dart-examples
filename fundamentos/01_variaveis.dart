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
  // EXEMPLOS PRÁTICO
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








  var aplicativo = "Spotify";
  var nome = "Miguel";
  var musica = "Trepada em Cuiaba";
  var tempo = 3.24;
  var tempoAtual = 1.23;
  var restante = tempo - tempoAtual;
  var datadeLancamento = "23-03-1999";
  var pausado = true;

  print("O usuario " + nome + " esta ouvindo a musica:");
  print(musica);
  print("Tempo total " + tempo.toString() + " ja se passaram " + tempoAtual.toString() + " restando: " + restante.toStringAsFixed(2));
  print("E esta pausado: " + pausado.toString());
  print("Lançado em: " + datadeLancamento);






  
}