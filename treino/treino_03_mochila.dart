class Item {
  String nome;
  double peso; // Peso em kg

  Item(this.nome, this.peso);
}

class Mochila {
  double capacidadeMaxima;
  List<Item> itensGuardados = [];

  Mochila(this.capacidadeMaxima);

  // Método que calcula o peso total atual usando um Loop
  double calcularPesoAtual() {
    double pesoTotal = 0;
    
    // Passa por todos os itens guardados e soma o peso
    for (int i = 0; i < itensGuardados.length; i++) {
      pesoTotal += itensGuardados[i].peso;
    }
    
    return pesoTotal;
  }

  void adicionarItem(Item novoItem) {
    // DESAFIO PARA OS ALUNOS:
    /*
      1. Crie uma variável recebendo o valor de calcularPesoAtual().
      2. Some esse peso atual com o 'novoItem.peso'.
      3. Faça um 'if': Se essa soma for MENOR OU IGUAL a capacidadeMaxima,
         adicione o item na lista (itensGuardados.add) e imprima que deu certo.
      4. Faça um 'else': Imprima "A mochila estourou! Não cabe [nome do item]".
    */
    // [CÓDIGO DO ALUNO AQUI]
    
    // 1. Pegamos o peso atual que já está na mochila
    double pesoAtual = calcularPesoAtual();
    
    // 2. Simulamos o peso futuro se adicionarmos o novo item
    double pesoSimulado = pesoAtual + novoItem.peso;

    // 3 e 4. Fazemos a verificação de capacidade
    if (pesoSimulado <= capacidadeMaxima) {
      itensGuardados.add(novoItem);
      print("✅ Sucesso: '${novoItem.nome}' adicionado à mochila!");
    } else {
      print("❌ A mochila estourou! Não cabe '${novoItem.nome}' (Faltou espaço para ${pesoSimulado - capacidadeMaxima} kg).");
    }
  }

  void exibirInventario() {
    print("\n🎒 INVENTÁRIO DA MOCHILA");
    print("Capacidade: ${calcularPesoAtual()} / $capacidadeMaxima kg");
    print("Itens:");
    for (int i = 0; i < itensGuardados.length; i++) {
      print("- ${itensGuardados[i].nome} (${itensGuardados[i].peso} kg)");
    }
  }
}

void main() {
  // Cria uma mochila que aguenta no máximo 10kg
  Mochila minhaMochila = Mochila(10.0);

  Item corda = Item("Corda de Escalada", 3.0);
  Item cantil = Item("Cantil de Água", 2.0);
  Item barraca = Item("Barraca de Camping", 6.0); // É bem pesada!

  // Tentando guardar os itens
  minhaMochila.adicionarItem(corda);
  minhaMochila.adicionarItem(cantil);
  
  // Este item deve ser bloqueado pelo IF que o aluno vai criar!
  minhaMochila.adicionarItem(barraca); 

  minhaMochila.exibirInventario();
}