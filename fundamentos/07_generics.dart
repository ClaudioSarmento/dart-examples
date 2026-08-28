// ==========================================
// MÓDULO 1: FUNDAMENTOS
// Aula 07 - Introdução aos Generics (Listas)
// ==========================================

/* 
  O QUE SÃO GENERICS? (< >)
  E se precisarmos guardar muitas informações ao mesmo tempo? Usamos Listas!
  Os Generics são esses sinais de Menor e Maior < >. Eles servem para dizer 
  ao Dart "EXATAMENTE" o tipo de coisa que estamos guardando dentro de uma coleção.
  É como colar uma etiqueta de "Apenas Ferramentas" numa caixa.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // Inventário de armas de um jogo. 
  // O <String> garante que só entra texto nessa lista.
  //List<String> inventarioArmas = ["Espada Rápida", "Machado Pesado", "Braço Mecânico"];
  
  // Imprimindo a lista inteira
  //print("Seu inventário de armas: $inventarioArmas");

  // Acessando um item específico (a contagem sempre começa no ZERO!)
  //print("Arma equipada: ${inventarioArmas[0]}"); // Vai imprimir "Espada Rápida"

  // Uma lista onde o Generic diz que só aceita números inteiros
  //List<int> pontuacoes = [150, 200, 90, 310];
  //print("Maior pontuação registrada: ${pontuacoes[3]}");

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma lista (List) utilizando Generics <String>.
    2. Guarde dentro dela o nome de 3 amigos ou amigas.
    3. Imprima a lista completa.
    4. Imprima apenas o nome do segundo amigo da lista (Lembre-se: começa no 0!).
  */
  
  // Escreva seu código abaixo desta linha:
  List<String> amigos = ["Miguel Galott Silverio", "Dhyonathan Dean Helmer", "Emily Fehlberg Visintin"];
  print("Amigo Favorito: ${amigos[1]}");
}