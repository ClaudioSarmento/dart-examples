// ==========================================
// MÓDULO 3: ALGORITMOS E FUNÇÕES
// Aula 04 - Parâmetros Nomeados
// ==========================================

/* 
  PARÂMETROS NOMEADOS (MUITO IMPORTANTE PARA O FLUTTER!)
  Quando uma função tem muitos parâmetros, podemos esquecer a ordem deles.
  Para resolver isso, colocamos os parâmetros dentro de chaves { }.
  Assim, na hora de usar, precisamos escrever o NOME do parâmetro. A ordem não importa mais!
  - required: significa que somos obrigados a passar aquele parâmetro.
*/

// Sistema de reservas de uma Arena Esportiva
/*
void reservarQuadra({
  required String modalidade, 
  required String horario, 
  bool incluirBola = false // Valor padrão, não é obrigatório preencher
}) {
  print("--- RESERVA CONFIRMADA ---");
  print("Modalidade: $modalidade");
  print("Horário: $horario");
  print("Aluguel de bola incluso? ${incluirBola ? 'Sim' : 'Não'}\n");
}
*/

void configurarIconeApp({required String nomeApp, required String corDeFundo, bool iconeEm2D = true}) {

  print("Nome: $nomeApp");
  print("Cor: $corDeFundo");
  print("icone Em 2d?: ${iconeEm2D ? 'sim' : 'Não'}\n");
}
void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Olha como o código fica super fácil de ler! E a ordem não importa:
 // reservarQuadra(
 //   horario: "19:00", 
  //  modalidade: "Futevôlei", 
   // incluirBola: true
  //);

  // Como incluirBola tem um valor padrão, não somos obrigados a passá-lo:
  //reservarQuadra(
  //  modalidade: "Beach Tennis", 
  //  horario: "20:30"
  //);

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma função chamada 'configurarIconeApp'.
    2. Use chaves {} para criar os parâmetros nomeados:
       - required String nomeApp
       - required String corDeFundo
       - bool iconeEm2D = true (Padrão de design)
    3. Imprima as informações do ícone gerado.
    4. No main(), chame a função configurando as propriedades do seu próprio app!
  */
  
  // Escreva seu código abaixo desta linha:
  configurarIconeApp(nomeApp: "DanteApp", corDeFundo: "Azul", iconeEm2D: false);
  
}