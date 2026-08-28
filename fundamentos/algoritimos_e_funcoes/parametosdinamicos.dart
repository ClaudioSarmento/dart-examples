// ==========================================
// MÓDULO 3: ALGORITMOS E FUNÇÕES
// Aula 02 - Parâmetros Dinâmicos
// ==========================================

/* 
  O QUE É O TIPO DYNAMIC?
  O Dart é uma linguagem fortemente tipada (gosta de saber se é int, String, etc).
  Mas existe um tipo chamado 'dynamic' que aceita QUALQUER coisa.
  ⚠️ Cuidado: Usamos pouco porque ele tira a "segurança" do nosso código.
*/

// O parâmetro 'dado' pode ser um número, um texto, um booleano...
void processarInformacao(dynamic dado) {
  print("Processando o dado: $dado");
  // Como é dynamic, o Dart não nos ajuda com o autocompletar da notação ponto.
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Simulando um banco de dados flexível
  processarInformacao("Nome do Paciente: Carlos"); // Texto
  processarInformacao(25); // Número inteiro (Idade)
  processarInformacao(78.5); // Número quebrado (Peso)
  processarInformacao(true); // Booleano (Tem alergia?)

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma função void chamada 'mostrarTipo' que receba um parâmetro (dynamic valor).
    2. Dentro da função, imprima o valor e o seu tipo.
       Dica: Você pode descobrir o tipo de uma variável usando: valor.runtimeType
    3. No main(), chame sua função 3 vezes: passando um texto, um número e um bool.
  */
  
  // Escreva seu código abaixo desta linha:
  
}