// ==========================================
// MÓDULO 2: ESTRUTURAS DE CONTROLE
// Aula 04 - Switch / Case
// ==========================================

/* 
  O QUE É O SWITCH?
  O 'switch' é um substituto elegante para quando temos muitos "if / else if" 
  verificando a MESMA variável. É como um menu de opções.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Imaginando a lógica de um Dashboard de um aplicativo corporativo
  // Queremos saber o que mostrar no cartão selecionado pelo usuário.
  String cartaoSelecionado = "pedidos_bloqueados";

  switch (cartaoSelecionado) {
    case "vendas_diarias":
      print("Exibindo o total de vendas do dia.");
      break; // O break diz ao programa: "Achei o que queria, pode parar de procurar!"
    case "clientes_ativos":
      print("Exibindo a lista de clientes logados.");
      break;
    case "pedidos_bloqueados":
      // Ação exata e específica para este cartão
      print("Exibindo o NÚMERO TOTAL de pedidos que estão bloqueados no momento.");
      break;
    default:
      // O default é o que acontece se nada acima for correspondido (igual ao 'else')
      print("Métrica não encontrada no dashboard.");
  }

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma variável String chamada 'diaDaSemana' e coloque um dia (ex: "Sexta").
    2. Use o switch para verificar o dia:
       - Caso "Segunda", imprima "Dia de começar a dieta."
       - Caso "Sexta", imprima "Sextou! Dia de jogar video game."
       - Caso "Sabado" ou "Domingo", imprima "Fim de semana!"
       - Default: "Dia normal de aula."
  */
  
  // Escreva seu código abaixo desta linha:
    String diaDaSemana = "domingo";
    String diaDaSemanaNormalizado = diaDaSemana.toLowerCase();

  switch (diaDaSemanaNormalizado) {
    case "segunda":
      print("Dia de começar a dieta.");
      break; 
    case "sexta":
      print("Sextou! Dia de jogar video game.");
      break;
    case "sabado":
       print("Fim de semana!");
    break;

     case "domingo":
      print("Fim de semana!");
    break;

    default: 
      print("Dia normal de aula.");

  }
  
}