import 'dart:math';

void main() {
  int moedas = 50; // Cada tiro custa 10 moedas
  int contadorPity = 0;
  List<String> inventario = [];


  print("🌟 BEM-VINDO AO BANNER DE INVOCAÇÃO 🌟\n");
  // DESAFIO PARA OS ALUNOS:
  /*
    1. Crie um laço 'while' que rode ENQUANTO o jogador 
    tiver moedas suficientes (>= 10).
    2. A cada repetição, subtraia 10 moedas.
    3. Aumente o 'contadorPity' em +1.
    4. Crie a regra do Pity:
       - Se o 'contadorPity' chegar a 5, adicione "Item Lendário 👑" 
       no inventario, 
         imprima que ele ganhou, e ZERE o contadorPity.
       - Se não for 5, adicione "Item Comum 📦" no inventario e imprima.
    5. No final do código (fora do loop), imprima o inventário completo.
  */
  
  // [CÓDIGO DO ALUNO AQUI]
  // RESOLUÇÃO DO DESAFIO:
  
  // 1. O laço roda enquanto houver dinheiro para pelo menos um tiro
  while (moedas >= 10) {
    // 2. Subtrai o custo do tiro
    moedas -= 10; 
    
    // 3. Aumenta o contador do Pity
    contadorPity++; 

    // 4. Regra do Pity (Garantia de item raro)
    if (contadorPity == 5) {
      inventario.add("Item Lendário 👑");
      print("✨ BRILHO DOURADO! Você ganhou um Item Lendário 👑!");
      
      // Zera o contador pois o prêmio já saiu
      contadorPity = 0; 
    } else {
      inventario.add("Item Comum 📦");
      print("Caixa normal... Você ganhou um Item Comum 📦.");
    }
  }

  // 5. Impressão final fora do loop
  print("\n🎒 SEU INVENTÁRIO FINAL:");
  
  // Um laço 'for' para deixar a impressão do inventário mais bonita
  for (int i = 0; i < inventario.length; i++) {
    print("- ${inventario[i]}");
  }
  
  print("\nSaldo final: $moedas moedas.");

}