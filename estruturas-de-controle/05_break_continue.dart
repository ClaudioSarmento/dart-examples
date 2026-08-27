// ==========================================
// MÓDULO 2: ESTRUTURAS DE CONTROLE
// Aula 05 - Break e Continue
// ==========================================

/* 
  CONTROLANDO O FLUXO DO LOOP
  Às vezes queremos pular uma repetição ou parar o loop inteiro antes do previsto.
  - break: Quebra (encerra) o loop imediatamente.
  - continue: Pula a repetição atual e vai direto para a próxima.
*/

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // 1. Usando CONTINUE (Pulando algo que não queremos)
  print("--- LISTA DE PACIENTES PARA ATENDIMENTO ---");
  List<String> pacientes = ["João", "Maria (Cancelou)", "Pedro", "Ana"];
  
  for (int i = 0; i < pacientes.length; i++) {
    // Se o nome do paciente contiver a palavra "(Cancelou)", pulamos ele
    if (pacientes[i].contains("(Cancelou)")) {
      print("Pulando horário vago...");
      continue; // Vai direto para o próximo 'i' sem ler o código abaixo
    }
    print("Atendendo paciente: ${pacientes[i]}");
  }

  print("\n--- BUSCANDO ITEM NO INVENTÁRIO ---");
  // 2. Usando BREAK (Parando ao encontrar o que queríamos)
  List<String> inventario = ["Poção", "Mapa", "Chave do Chefe", "Escudo"];
  
  for (int i = 0; i < inventario.length; i++) {
    print("Olhando slot $i: ${inventario[i]}");
    
    if (inventario[i] == "Chave do Chefe") {
      print("Achei a chave! Não preciso mais olhar o resto da mochila.");
      break; // Encerra o 'for' imediatamente
    }
  }

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie um loop 'for' que conte de 1 a 10.
    2. Dentro do loop, faça um 'if' para verificar se o número é 5.
    3. Se for 5, use o 'continue' para pular.
    4. Imprima os números (Você notará que o 5 não será impresso!).
  */
  
  // Escreva seu código abaixo desta linha:
  String loop = "Contagem de Loop";
  int totalDeLoop = 10;
  for (int i = 1; i <= totalDeLoop; i++) {
if (i == 5) {
  continue;
}
    print("$loop $i: ${i}");
  }
  
}  