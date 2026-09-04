class Mochila {
  List<String> itens = ["Corda", "Poção de Vida", "Mapa", "Poção de Vida", "Espada"];
  int vidaJogador = 50;

  void exibirMochila() {
    print("\n🎒 Itens na mochila: $itens");
    print("❤️ Vida Atual: $vidaJogador\n");
  }

  // DESAFIO PARA OS ALUNOS:
  /*
    Crie o método 'usarPocao()'.
    1. Crie um laço 'for' para percorrer a lista 'itens'.
    2. Use um 'if' para verificar se o item atual é IGUAL a "Poção de Vida".
    3. Se encontrar:
       - Aumente a vidaJogador em +30.
       - Remova a poção da lista (Dica: itens.removeAt(i);)
       - Imprima "Você usou uma poção!".
       - USE O COMANDO 'break;' para parar o loop IMEDIATAMENTE (para ele não gastar todas as poções de uma vez).
    4. Se o loop terminar e ele não tiver achado nenhuma poção, 
       imprima "Você não tem mais poções!".
  */
  // [CÓDIGO DO ALUNO AQUI]
}

void main() {
  Mochila bag = Mochila();
  
  bag.exibirMochila();
  
  // O aluno vai testar o método aqui:
  // bag.usarPocao(); // Vai gastar a primeira poção
  // bag.exibirMochila();
  // bag.usarPocao(); // Vai gastar a segunda
  // bag.usarPocao(); // Deve avisar que acabou!
}