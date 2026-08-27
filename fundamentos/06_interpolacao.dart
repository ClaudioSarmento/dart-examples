// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 06 - Interpolação de Strings
// ==========================================

/* 
  INTERPOLAÇÃO
  Ficar usando o sinal de '+' para juntar textos e variáveis é cansativo e 
  deixa o código feio (lembra dos '.toString()' que tivemos que usar?).
  A interpolação nos permite injetar variáveis diretamente dentro do texto 
  usando o símbolo de cifrão: $variavel ou ${codigo}
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  String nome = "Arthur";
  int nivel = 30;
  double saldoOuro = 450.75;

  // Jeito ANTIGO (concatenando):
  // print("Olá " + nome + ", seu nível é " + nivel.toString());

  // Jeito NOVO e elegante (Interpolação):
  print("Olá $nome, bem-vindo de volta! Seu nível é $nivel.");
  print("Seu saldo é de \$ $saldoOuro moedas."); // Usamos \$ para mostrar o símbolo real de dinheiro.

  // Usando chaves ${} para resolver expressões matemáticas ou notação ponto dentro do texto:
  print("Daqui a dois níveis você estará no nível ${nivel + 2}.");
  print("Seu nome em maiúsculo é ${nome.toUpperCase()}.");

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma variável com o nome da sua música favorita.
    2. Crie uma variável com o nome da banda/cantor.
    3. Use a interpolação ($) para imprimir uma frase inteira e bonita,
       como: "Minha música favorita é X, tocada por Y."
  */
  
  // Escreva seu código abaixo desta linha:
  String musica = "Love";
  String cantar = "Keyshia Cole";

  print("OI $cantar, Minha musica favorita é: $musica");
}