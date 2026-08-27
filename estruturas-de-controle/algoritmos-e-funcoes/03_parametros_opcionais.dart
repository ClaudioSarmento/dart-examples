// ==========================================
// MÓDULO 3: ALGORITMOS E FUNÇÕES
// Aula 03 - Parâmetros Opcionais (Posicionais)
// ==========================================

/* 
  O QUE SÃO PARÂMETROS OPCIONAIS?
  Às vezes, uma informação não é obrigatória para a função funcionar.
  Colocamos esses parâmetros dentro de colchetes [ ]. 
  Se o usuário não enviar nada, podemos definir um "valor padrão" (default).
*/

// Aqui, o nome do exercício é obrigatório. As repetições são opcionais, 
// e se ninguém passar, será 10 por padrão.
void adicionarExercicio(String nome, [int repeticoes = 10]) {
  print("Adicionado na ficha: $nome - $repeticoes repetições.");
}

// Quando o valor não tem um padrão e pode ser vazio (nulo), colocamos uma interrogação (?).
void registrarPaciente(String nome, [String? apelido]) {
  if (apelido != null) {
    print("Paciente registrado: $nome (Conhecido como $apelido)");
  } else {
    print("Paciente registrado: $nome");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Gerando a ficha de treino no app MyMuscles
  adicionarExercicio("Supino"); // Vai usar o padrão (10)
  adicionarExercicio("Agachamento", 15); // Vai substituir o padrão por 15

  // Registrando no sistema de fonoaudiologia
  registrarPaciente("Roberto Carlos", "Beto");
  registrarPaciente("Mariana"); // Vai deixar o apelido nulo

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma função 'criarPersonagem' que recebe obrigatoriamente um 'nome' (String).
    2. Adicione um parâmetro opcional 'classe' (String) com o valor padrão "Guerreiro".
    3. Imprima: "Personagem criado: [nome] - Classe: [classe]".
    4. Chame a função no main() duas vezes: uma informando a classe (ex: Mago) e outra não.
  */
  
  // Escreva seu código abaixo desta linha:
  void criarPersonagem(String nome, [String classe = "Guerreiro"]) {
    print("Personagem criado: $nome - Classe: $classe");

  }
  criarPersonagem("Marlizinha");
  criarPersonagem("Terisinha", "Mago");

}