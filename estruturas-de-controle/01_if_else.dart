// ==========================================
// MÓDULO 2: ESTRUTURAS DE CONTROLE
// Aula 01 - If / Else (Se / Senão)
// ==========================================

/* 
  COMO O CÓDIGO TOMA DECISÕES?
  Usamos o 'if' (se) e o 'else' (senão) para criar caminhos no nosso aplicativo.
  É como chegar em uma encruzilhada: SE chover, fico em casa. SENÃO, vou à praia.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Exemplo: Verificando se o personagem tem os atributos para usar uma arma (Build de Qualidade)
  int motricidade = 15;
  int tecnica = 20;
  
  int requisitoMotricidade = 12;
  int requisitoTecnica = 18;

  print("Tentando equipar a Lâmina Grande...");

  if (motricidade >= requisitoMotricidade && tecnica >= requisitoTecnica) {
    print("Sucesso! Você tem os atributos necessários para usar esta arma.");
  } else {
    print("Falha! Seus atributos são muito baixos para equipar esta arma.");
  }

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma variável double chamada 'nota' com o valor da sua nota na prova.
    2. Crie uma estrutura if/else:
       - SE a nota for maior ou igual a 6.0, imprima "Aprovado!".
       - SENÃO, imprima "Reprovado. Estude mais!".
  */
  
  // Escreva seu código abaixo desta linha:
  
double nota = 10.0;

if (nota >= 6.0 ){
  print("Sucesso! Você foi aprovado!");
}else{
  print("Reprovado, estude mais!");
}

}