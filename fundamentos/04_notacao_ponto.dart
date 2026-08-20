// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 04 - Notação Ponto
// ==========================================

/* 
  O QUE É A NOTAÇÃO PONTO?
  A notação ponto (.) é como um "controle remoto" que nos permite acessar 
  funcionalidades secretas que já vêm embutidas nas nossas variáveis.
  Por exemplo, textos (Strings) têm botões no controle remoto para 
  transformar tudo em maiúsculo, ou para contar quantas letras têm.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  String nomeUsuario = "   fulano_gamer123   ";
  
  // Limpando os espaços em branco antes e depois com o .trim()
  String nomeLimpo = nomeUsuario.trim();
  
  // Transformando tudo em maiúsculo com o .toUpperCase()
  String nomeGritando = nomeLimpo.toUpperCase();
  
  print("Nome original: '" + nomeUsuario + "'");
  print("Nome corrigido: " + nomeLimpo);
  print("Nome destaque: " + nomeGritando);
  print("Quantidade de caracteres: " + nomeLimpo.length.toString());

  // Também funciona com números!
  double notaDaProva = 7.4;
  print("Nota arredondada: " + notaDaProva.round().toString());

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma variável String com uma frase toda em letras minúsculas.
    2. Usando a notação ponto, crie uma nova variável que receba essa mesma 
       frase, mas toda em LETRAS MAIÚSCULAS.
    3. Imprima a nova frase.
    4. BÔNUS: Imprima quantas letras (length) tem a sua frase.
  */
  
  // Escreva seu código abaixo desta linha:
  
}