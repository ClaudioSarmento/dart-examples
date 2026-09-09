class Inventario {
  List<String> materiais = ["Ferro", "Madeira", "Couro", "Pedra"];

  void fabricarEspada() {
    print("🛠️ TENTANDO FABRICAR: Espada de Aço...");
    print("Custo: 2x Ferro, 1x Madeira\n");

    int contagemFerro = 0;
    int contagemMadeira = 0;

    // DESAFIO PARA OS ALUNOS:
    /*
      1. Faça um laço 'for' para percorrer a lista 'materiais'.
      2. Use 'if' para verificar cada item:
         - Se for "Ferro", aumente a contagemFerro.
         - Se for "Madeira", aumente a contagemMadeira.
      3. Fora do laço, faça um 'if/else':
         - Se tiver pelo menos 2 Ferros E (&&) 1 Madeira: 
           Imprima "✅ Espada fabricada com sucesso!"
         - Senão: 
           Imprima "❌ Materiais insuficientes."
    */

    // [CÓDIGO DO ALUNO AQUI]
    for(var materialAtual in materiais){
      if(materialAtual == "Ferro"){
        contagemFerro ++;
      }else if(materialAtual == "Madeira"){
        contagemMadeira++;
      }
    }

    if(contagemFerro >= 2 && contagemMadeira >= 1){
      
    }

    for(int i = 0; i < materiais.length; i++){
      var materialAtual = materiais[i].toUpperCase();
      if(materialAtual == "FERRO"){
        contagemFerro++;
      }else if(materialAtual == "MADEIRA"){
        contagemMadeira++;
      }
    }
    if(contagemFerro >= 2 && contagemMadeira >= 1){
      print("✅ Espada fabricada com sucesso!");
    }else{
      print("❌ Materiais insuficientes.");
    }

  }
}

void main() {
  Inventario bolsa = Inventario();
  bolsa.fabricarEspada(); 
  // Com a lista atual, deve dar Sucesso!
  // Peça para eles testarem apagando um "Ferro" da lista lá em cima para ver se dá erro.
}