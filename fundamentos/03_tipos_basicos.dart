// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 03 - Tipos Básicos
// ==========================================

/* 
  TIPOS BÁSICOS
  Até agora o Dart adivinhou o que guardamos nas variáveis usando o 'var'.
  Mas nós podemos ser explícitos e dizer exatamente o que a variável guarda!
  Principais tipos:
  - int: Números inteiros (1, -5, 100)
  - double: Números com vírgula/quebrados (1.5, 99.90) -> No Dart usamos PONTO.
  - String: Textos (sempre entre aspas)
  - bool: Verdadeiro (true) ou Falso (false)
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Ficha de treino de um aplicativo de academia
  String nomeExercicio = "Supino Reto";
  int repeticoes = 12;
  double pesoKg = 15.5;
  bool treinoConcluido = false;

  print("Exercício: " + nomeExercicio);
  print("Repetições: " + repeticoes.toString());
  print("Peso: " + pesoKg.toString() + " kg");
  print("Terminou? " + treinoConcluido.toString());

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    Crie a ficha de um paciente para um sistema (pode ser clínica, escola, etc).
    Você DEVE usar os tipos (String, int, double e bool) antes do nome da variável:
    - O nome do paciente
    - A idade
    - A altura (ex: 1.75)
    - Se é a primeira consulta dele (true ou false)
    
    Imprima os dados em seguida!
  */
  
  // Escreva seu código abaixo desta linha:
  String fichaDePaciente = "Ana Luiza";
  int idade = 17;
  double altura = 1.64;
  bool seAprimeiraConsultaDela = true;
  String primeiraConsulta = "";
  
  print("Ficha do Paciente: " + fichaDePaciente);
  print("Idade do Paciente: " + idade.toString());
  print("Altura do Paciente: " + altura.toString());

  
  if (seAprimeiraConsultaDela == true) {
    primeiraConsulta = "Foi um sucesso";
  }
  else {
    primeiraConsulta = "Não foi um sucesso";
  }

print("Se for a primeira consulta dele: " + primeiraConsulta);

}