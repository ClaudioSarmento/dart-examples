import 'dart:io';

void main() {
  // A senha do servidor secreta é 73.
  int senhaDoServidor = 73;
  int tentativas = 5;
  bool hackeado = false;

  print("💻 TERMINAL DA MEGACORP INICIADO 💻");
  print("Você tem $tentativas tentativas para descobrir a senha numérica (entre 1 e 100).");

  // DESAFIO PARA OS ALUNOS:
  /*
    1. Crie um laço 'while' que rode enquanto 'tentativas' for maior que 0 e 'hackeado' for false.
    2. Peça para o jogador digitar um palpite (Converta o texto para int usando int.parse()).
    3. Diminua 1 das tentativas.
    4. Faça a lógica de dicas usando if/else if:
       - Se palpite == senhaDoServidor: hackeado = true; Imprima "ACESSO CONCEDIDO!".
       - Se palpite > senhaDoServidor: Imprima "Erro! A senha é MENOR que o seu palpite."
       - Se palpite < senhaDoServidor: Imprima "Erro! A senha é MAIOR que o seu palpite."
    5. Fora do loop, se 'hackeado' continuar false, imprima "SISTEMA BLOQUEADO. Polícia acionada!".
  */

  // [CÓDIGO DO ALUNO AQUI]
  
  /* 
    DICA PARA LER NÚMEROS NO DART:
    String texto = stdin.readLineSync() ?? "0";
    int palpite = int.parse(texto);
  */
}