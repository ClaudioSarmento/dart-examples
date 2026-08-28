// ==========================================
// MÓDULO 3: ALGORITMOS E FUNÇÕES
// Aula 01 - Conceitos Básicos sobre Funções
// ==========================================

/* 
  O QUE SÃO FUNÇÕES?
  Imagine uma função como uma "máquina" em uma fábrica. Você entrega os 
  ingredientes (parâmetros), ela faz um processamento lá dentro, e te 
  devolve um produto pronto (retorno). 
  
  Se a máquina não devolve nada (apenas faz algo e pronto), dizemos que 
  ela é 'void' (vazia).
*/

// 1. Função Void (Não devolve nada, só executa uma ação)
void exibirBoasVindas(String nomeUsuario) {
  print("Bem-vindo ao app, $nomeUsuario!");
}

// 2. Função com Retorno (Recebe dados, calcula e DEVOLVE um resultado)
// Aqui usamos 'double' antes do nome para avisar que a função vai cuspir um número.
double calcularIMC(double peso, double altura) {
  double resultado = peso / (altura * altura);
  return resultado; // A palavra 'return' é quem "cospe" o resultado para fora
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Chamando a máquina de dar boas-vindas
  exibirBoasVindas("Arthur");
  exibirBoasVindas("Beatriz");
  
  // Chamando a máquina de calcular IMC (precisamos guardar o que ela devolve)
  double meuImc = calcularIMC(70.5, 1.75);
  int resultadoDaSoma = somarPontos(10,30);
  // Arredondando para duas casas decimais para ficar mais bonito
  print("Seu IMC no aplicativo de treino é: ${meuImc.toStringAsFixed(2)}");
  print("O resultado da soma é: " + resultadoDaSoma.toString());

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Fora do main(), crie uma função chamada 'somarPontos' que receba 
       dois números inteiros (int a, int b).
    2. Essa função deve retornar (return) a soma dos dois números.
    3. Dentro do main(), chame a sua função passando os pontos do Time A e Time B.
    4. Guarde o resultado em uma variável e imprima: "Total de pontos no jogo: X"
  */
  
  // Escreva seu código abaixo desta linha:
  
  


}

int somarPontos( int a ,  int b){
    int resultado =  a +  b;
    return resultado;

  
}
