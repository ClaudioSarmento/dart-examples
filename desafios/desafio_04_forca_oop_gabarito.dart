// ==========================================
// GABARITO: JOGO DA FORCA EM OOP
// Com Boneco Visual e Palavras Aleatórias
// ==========================================

import 'dart:io';
// RESOLUÇÃO DESAFIO 2: Importamos a biblioteca de matemática para usar o Random()
import 'dart:math';

// ---------------------------------------------------------
// CLASSE 1: A Palavra 
// ---------------------------------------------------------
class PalavraMisteriosa {
  String _palavra;
  String dica;
  List<String> letrasDescobertas = [];

  PalavraMisteriosa(this._palavra, this.dica) {
    _palavra = _palavra.toUpperCase(); 
  }

  String get revelarPalavra => _palavra;

  bool testarLetra(String letra) {
    if (_palavra.contains(letra)) {
      letrasDescobertas.add(letra);
      return true;
    }
    return false;
  }

  String obterProgressoVisual() {
    String visual = "";
    for (int i = 0; i < _palavra.length; i++) {
      String letraAtual = _palavra[i];
      if (letrasDescobertas.contains(letraAtual)) {
        visual += "$letraAtual "; 
      } else if (letraAtual == " ") {
        visual += "  "; 
      } else {
        visual += "_ "; 
      }
    }
    return visual;
  }

  bool verificarVitoria() {
    return !obterProgressoVisual().contains("_");
  }
}

// ---------------------------------------------------------
// CLASSE 2: O Gerenciador do Jogo
// ---------------------------------------------------------
class JogoDaForca {
  PalavraMisteriosa desafio;
  int _vidas = 6;
  List<String> letrasChutadas = []; 

  JogoDaForca(this.desafio);

  void iniciar() {
    print("\n=================================");
    print("💀 BEM-VINDO AO JOGO DA FORCA 💀");
    print("=================================");

    while (_vidas > 0 && !desafio.verificarVitoria()) {
      _exibirPainel();

      stdout.write("Digite uma letra: ");
      String palpite = stdin.readLineSync()?.toUpperCase() ?? "";

      if (palpite.isEmpty || palpite.length > 1) {
        print("\n⚠️ Por favor, digite apenas UMA letra!");
        continue; 
      }

      if (letrasChutadas.contains(palpite)) {
        print("\n⚠️ Você já chutou a letra '$palpite'. Tente outra!");
        continue;
      }

      letrasChutadas.add(palpite);

      if (desafio.testarLetra(palpite)) {
        print("\n✅ ACERTOU! A letra '$palpite' existe na palavra.");
      } else {
        print("\n❌ ERROU! A letra '$palpite' não existe.");
        _vidas--; 
      }
    }

    _exibirResultado();
  }

  void _exibirPainel() {
    print("\n---------------------------------");
    
    // RESOLUÇÃO DESAFIO 1 (Chamada do método):
    // Desenhamos o boneco ANTES de mostrar as dicas para ficar visualmente bonito
    _desenharBoneco();
    
    print("DICA: ${desafio.dica}");
    print("VIDAS RESTANTES: $_vidas");
    print("LETRAS USADAS: $letrasChutadas");
    print("PALAVRA: ${desafio.obterProgressoVisual()}");
    print("---------------------------------\n");
  }

  // RESOLUÇÃO DESAFIO 1 (O Método do Boneco):
  // Usamos um switch para imprimir as partes do corpo conforme as vidas caem
  void _desenharBoneco() {
    print("  _______");
    print(" |/      |");

    // Atenção: a barra invertida (\) é um caractere especial de escape no Dart.
    // Para imprimi-la na tela, precisamos escrever duas (\\).
    switch (_vidas) {
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

  void _exibirResultado() {
    print("\n=================================");
    // Desenhamos pela última vez para mostrar o boneco morto se ele perdeu
    if (_vidas == 0) _desenharBoneco(); 
    
    if (desafio.verificarVitoria()) {
      print("🏆 PARABÉNS! VOCÊ SOBREVIVEU!");
      print("A palavra era: ${desafio.revelarPalavra}");
    } else {
      print("💀 GAME OVER! VOCÊ FOI ENFORCADO!");
      print("A palavra correta era: ${desafio.revelarPalavra}");
    }
    print("=================================\n");
  }
}

// ---------------------------------------------------------
// EXECUÇÃO DO PROGRAMA
// ---------------------------------------------------------
void main() {
  // RESOLUÇÃO DESAFIO 2: Criando uma lista de palavras para sortear
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
  int indiceSorteado = sorteador.nextInt(bancoDePalavras.length);
  
  // Puxamos a palavra da lista usando a chave aleatória
  PalavraMisteriosa palavraEscolhida = bancoDePalavras[indiceSorteado];

  // Criamos e iniciamos o jogo passando a palavra sorteada!
  JogoDaForca partida = JogoDaForca(palavraEscolhida);
  partida.iniciar();
}