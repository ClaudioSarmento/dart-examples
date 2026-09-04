// ==========================================
// PROJETO PRÁTICO: JOGO DA FORCA EM OOP
// O Confronto de Lógica
// ==========================================

import 'dart:io';
import 'dart:math';

// ---------------------------------------------------------
// CLASSE 1: A Palavra (Foco em Encapsulamento e Métodos)
// ---------------------------------------------------------
class PalavraMisteriosa {
  // A palavra secreta é PRIVADA (_). O jogador não pode trapacear e ler o valor direto!
  String _palavra;
  String dica;
  
  // Lista que guarda apenas as letras que o jogador já acertou
  List<String> letrasDescobertas = [];

  // Construtor
  PalavraMisteriosa(this._palavra, this.dica) {
    // Garantimos que a palavra secreta fique toda em maiúscula para facilitar a comparação
    _palavra = _palavra.toUpperCase(); 
  }

  // Getter para quando o jogo acabar e precisarmos revelar a palavra
  String get revelarPalavra => _palavra;

  // Método que verifica se a letra chutada existe na palavra secreta
  bool testarLetra(String letra) {
    if (_palavra.contains(letra)) {
      letrasDescobertas.add(letra); // Guarda a letra certa na lista
      return true;
    }
    return false;
  }

  // Método que desenha os tracinhos e as letras reveladas (Ex: F _ U T _ R)
  String obterProgressoVisual() {
    String visual = "";
    
    // Passamos letra por letra da palavra secreta
    for (int i = 0; i < _palavra.length; i++) {
      String letraAtual = _palavra[i];
      
      if (letrasDescobertas.contains(letraAtual)) {
        visual += "$letraAtual "; // Se já descobriu, mostra a letra
      } else if (letraAtual == " ") {
        visual += "  "; // Se for espaço (palavra composta), mantém o espaço
      } else {
        visual += "_ "; // Se não descobriu, mostra o traço
      }
    }
    return visual;
  }

  // Método que verifica se o jogador já descobriu todas as letras
  bool verificarVitoria() {
    // Se ainda houver algum '_' no visual, é porque ele não ganhou
    return !obterProgressoVisual().contains("_");
  }
}

// ---------------------------------------------------------
// CLASSE 2: O Gerenciador do Jogo (Foco em Composição e Loops)
// ---------------------------------------------------------
class JogoDaForca {
  // COMPOSIÇÃO: O Jogo TEM uma PalavraMisteriosa dentro dele!
  PalavraMisteriosa desafio;
  
  int _vidas = 6;
  List<String> letrasChutadas = []; // Histórico de tudo que ele já digitou

  JogoDaForca(this.desafio);

  // Método principal que roda o Loop do jogo
  void iniciar() {
    print("\n=================================");
    print("💀 BEM-VINDO AO JOGO DA FORCA 💀");
    print("=================================");

    // O jogo roda ENQUANTO o jogador tiver vidas e ainda não tiver ganhado
    while (_vidas > 0 && !desafio.verificarVitoria()) {
      _exibirPainel();

      stdout.write("Digite uma letra: ");
      String palpite = stdin.readLineSync()?.toUpperCase() ?? "";

      // Validação básica
      if (palpite.isEmpty || palpite.length > 1) {
        print("\n⚠️ Por favor, digite apenas UMA letra!");
        continue; // Pula para a próxima repetição do while
      }
    
      if (letrasChutadas.contains(palpite)) {
        print("\n⚠️ Você já chutou a letra '$palpite'. Tente outra!");
        continue;
      }

      // Adiciona ao histórico de chutes
      letrasChutadas.add(palpite);

      // Passa a letra para o objeto PalavraMisteriosa verificar
      if (desafio.testarLetra(palpite)) {
        print("\n✅ ACERTOU! A letra '$palpite' existe na palavra.");
      } else {
        print("\n❌ ERROU! A letra '$palpite' não existe.");
        _vidas--; // Perde uma vida!
      }
    }

    _exibirResultado();
  }

  // Método PRIVADO (começa com _). Só o próprio jogo pode chamar esse painel.
  void _exibirPainel() {
    print("\n---------------------------------");
    desenharBoneco();
    print("DICA: ${desafio.dica}");
    print("VIDAS RESTANTES: $_vidas");
    print("LETRAS USADAS: $letrasChutadas");
    print("PALAVRA: ${desafio.obterProgressoVisual()}");
    print("---------------------------------\n");
  }

  void _exibirResultado() {
    print("\n=================================");
    // Desenhamos pela última vez para mostrar o boneco morto se ele perdeu
    if (_vidas == 0) desenharBoneco(); 
    
    if (desafio.verificarVitoria()) {
      print("🏆 PARABÉNS! VOCÊ SOBREVIVEU!");
      print("A palavra era: ${desafio.revelarPalavra}");
    } else {
      print("💀 GAME OVER! VOCÊ FOI ENFORCADO!");
      print("A palavra correta era: ${desafio.revelarPalavra}");
    }
    print("=================================\n");
  }

 void desenharBoneco(){
   print("  _______");
   print(" |/      |");
   switch(_vidas){
    case 6: // Ileso
       print(" |");
       print(" |");
       print(" |");
       print(" |");
       break;
    case 5: // Cabeça
      print(" |      (_)");
      print(" |");
      print(" |");
      print(" |");
      break;
    case 4: // Tronco
      print(" |      (_)");
      print(" |       |");
      print(" |       |");
      print(" |");
      break;
    case 3: // Braço Esquerdo
      print(" |      (_)");
      print(" |      /|");
      print(" |       |");
      print(" |");
      break;
    case 2: // Braços
        print(" |      (_)");
        print(" |      /|\\");
        print(" |       |");
        print(" |");
        break;
    case 1: // Perna Esquerda
        print(" |      (_)");
        print(" |      /|\\");
        print(" |       |");
        print(" |      /");
        break;
    case 0: // Enforcado! (Usado apenas no final, se o jogo chamar o painel de novo)
        print(" |      (_)");
        print(" |      /|\\");
        print(" |       |");
        print(" |      / \\");
        break;
   }
   print("_|_\n");
 }

}

// ---------------------------------------------------------
// EXECUÇÃO DO PROGRAMA
// ---------------------------------------------------------
void main() {
  // 1. Criamos o objeto da palavra
  //PalavraMisteriosa palavra = PalavraMisteriosa("FLUTTER", "Framework criado pelo Google para aplicativos");

  List<PalavraMisteriosa> bancoDePalavras = [
    PalavraMisteriosa("FLUTTER", "Framework para aplicativos"),
    PalavraMisteriosa("DART", "Linguagem de programação que estamos aprendendo"),
    PalavraMisteriosa("FUTEVOLEI", "Esporte famoso de areia"),
    PalavraMisteriosa("VARIAVEL", "Uma caixa para guardar valores na programação"),
    PalavraMisteriosa("ALGORITMO", "Sequência de passos lógicos para resolver um problema"),
  ];
  
  // Instanciamos o objeto Random da biblioteca dart:math
  Random sorteador = Random();
  
  // O nextInt() pega um número aleatório de 0 até o tamanho da lista
  int indiceSorteado = sorteador
  .nextInt(bancoDePalavras.length);
  
  // Puxamos a palavra da lista usando a chave aleatória
  PalavraMisteriosa palavraEscolhida = bancoDePalavras[indiceSorteado];

  // 2. Criamos o jogo, passando a palavra para dentro dele (Composição)
  JogoDaForca partida = JogoDaForca(palavraEscolhida);

  // 3. Damos o play!
  partida.iniciar();


  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS (EXPANDINDO O JOGO)
  // ------------------------------------------
  /*
    DESAFIO 1: A Forca Visual!
    Vá na classe JogoDaForca e crie um método chamado 'desenharBoneco()'.
    Use um 'switch' ou 'if' baseado na variável '_vidas' para imprimir 
    um bonequinho de texto (ASCII Art). 
    Exemplo: Se vidas == 5, imprime a cabeça. Se vidas == 4, cabeça e tronco.
    Chame esse método dentro do '_exibirPainel()'.

    DESAFIO 2: Palavras Aleatórias! (Pesquisa)
    Crie uma Lista de objetos 'PalavraMisteriosa' no main() com umas 5 palavras.
    Pesquise no Google como usar o "Random()" no Dart (import 'dart:math';) 
    para sortear uma palavra dessa lista e passá-la para o jogo!
  */
}