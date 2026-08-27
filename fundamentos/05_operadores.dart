// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 05 - Operadores
// ==========================================

/* 
  OPERADORES
  Eles servem para fazer cálculos matemáticos ou comparações lógicas.
  - Matemáticos: +, -, *, /, % (resto da divisão)
  - Relacionais: == (igual), != (diferente), > (maior), < (menor), >=, <=
  - Lógicos: && (E - os dois lados precisam ser verdadeiros), || (OU - basta um lado ser verdadeiro)
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // 1. Operadores Matemáticos (Calculando o Dano de um RPG)
  int ataqueBase = 50;
  int bonusArma = 15;
  int danoTotal = ataqueBase + bonusArma;
  print("Dano do personagem: " + danoTotal.toString());

  // 2. Operadores Relacionais e Lógicos (Verificando acesso em um Sistema)
  // Regra: Apenas administradores e coordenadores têm acesso à plataforma.
  // Colaboradores não têm acesso.
  
  String cargo = "coordenador";
  
  // Lemos assim: "O acesso é liberado SE o cargo for igual a administrador OU igual a coordenador"
  bool acessoLiberado = (cargo == "administrador" || cargo == "coordenador");
  
  print("O cargo é: " + cargo);
  print("Acesso liberado ao painel? " + acessoLiberado.toString());

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma variável 'idade' e coloque a sua idade.
    2. Crie uma variável 'temIngresso' e coloque true ou false.
    3. Crie uma variável booleana 'podeEntrarNoShow' que só será true 
       SE a idade for maior ou igual a 16 E (&&) a pessoa tiver ingresso.
    4. Imprima o resultado de 'podeEntrarNoShow'.
  */
  
  // Escreva seu código abaixo desta linha:
  int idade = 19;
  bool temIngresso = true;
  bool podeEntrarNoShow = (idade >=16  &&  temIngresso == true);

  print("Tem quer ter 16 ou mais : " + idade.toString());
  print("Pode entrar no show: " + podeEntrarNoShow.toString());
  
}