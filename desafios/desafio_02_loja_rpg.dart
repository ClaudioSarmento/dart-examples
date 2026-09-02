class ItemMagico {
  String nome;
  double _preco; // Preço privado! Ninguém pode mudar para zero de graça.

  ItemMagico(this.nome, this._preco);

  // Getter para ler o preço
  double get preco => _preco;

  // Setter para dar desconto, mas com regras!
  set aplicarDesconto(double porcentagem) {
    if (porcentagem > 0 && porcentagem <= 50) {
      _preco = _preco - (_preco * (porcentagem / 100));
      print("Desconto aplicado! Novo preço de $nome: \$${_preco}");
    } else {
      print("Erro: O desconto deve ser entre 1% e 50%. O Ferreiro não é bobo!");
    }
  }
}

class CarrinhoDeCompras {
  List<ItemMagico> itens = []; // Composição/Agregação

  void adicionarItem(ItemMagico item) {
    itens.add(item);
    print("🛒 ${item.nome} adicionado ao carrinho.");
  }

  void exibirRecibo() {
    print("\n====== RECIBO DA LOJA ======");
    double total = 0;

    // DESAFIO PARA OS ALUNOS AQUI:
    /*
      Crie um laço 'for' para percorrer a lista de 'itens'.
      Para cada item, você deve:
      1. Imprimir o nome e o preço dele.
      2. Somar o preço do item na variável 'total'.
    */
    
    // [CÓDIGO DO ALUNO AQUI]

    print("============================");
    print("TOTAL A PAGAR: \$ $total");
  }
}

void main() {
  ItemMagico espada = ItemMagico("Espada de Fogo", 150.0);
  ItemMagico pocao = ItemMagico("Poção de Vida", 20.0);
  
  // Testando a segurança do sistema (Encapsulamento)
  espada.aplicarDesconto = 20; // Vai funcionar
  espada.aplicarDesconto = 100; // Vai dar erro!
  
  CarrinhoDeCompras meuCarrinho = CarrinhoDeCompras();
  meuCarrinho.adicionarItem(espada);
  meuCarrinho.adicionarItem(pocao);

  // O aluno precisará ter resolvido o desafio no método para o recibo funcionar!
  meuCarrinho.exibirRecibo(); 
}