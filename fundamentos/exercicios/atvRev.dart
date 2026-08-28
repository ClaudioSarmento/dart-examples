import 'dart:io';
import 'dart:math';

void main() {
  final Random random = Random();

  print("===========================================");
  print("⚔️  BEM-VINDO À ARENA DE BATALHA RPG ⚔️");
  print("===========================================\n");

  stdout.write("Guerreiro, digite seu nome: ");
  String nomeJogador = stdin.readLineSync() ?? "Herói Anônimo";

  // Atributos do Jogador
  int hpMaxJogador = 100;
  int hpJogador = hpMaxJogador;
  int pocoesDeCura = 3;
  int recargaFuria = 0; // Cooldown da habilidade especial

  // Atributos do Chefe
  int hpMaxChefe = 150;
  int hpChefe = hpMaxChefe;

  print("\nUm imenso AUTÔMATO FURIOSO bloqueia seu caminho!");
  print("Prepare-se, $nomeJogador!\n");

  while (hpJogador > 0 && hpChefe > 0) {
    bool defensorAtivo = false;
    
    if (recargaFuria > 0) recargaFuria--;

    print("-------------------------------------------");
    print("STATUS: $nomeJogador [HP: $hpJogador/$hpMaxJogador] | Poções: $pocoesDeCura");
    print("STATUS: Autômato [HP: $hpChefe/$hpMaxChefe]");
    if (recargaFuria > 0) print("⏳ Fúria de Golpes recarregando ($recargaFuria turnos)");
    print("-------------------------------------------");
    
    print("Escolha sua ação:");
    print("1 - ⚔️ Atacar");
    print("2 - 🧪 Usar Poção (+35 HP)");
    print("3 -  Defender (Reduz dano recebido em 50%)");
    print("4 -  Fúria de Golpes (3 ataques com penalidade de HP)");
    print("5 - 🏃 Fugir da Batalha");
    stdout.write("Sua escolha: ");

    String acao = stdin.readLineSync() ?? "";

    switch (acao) {
      case "1":
  
        int danoBase = 18 + random.nextInt(10); 
        bool critico = random.nextDouble() < 0.15;
        int danoTotal = critico ? (danoBase * 1.5).round() : danoBase;

        hpChefe -= danoTotal;
        if (critico) {
          print("\n💥 GOLPE CRÍTICO! Você causou $danoTotal de dano!");
        } else {
          print("\n=> Você desferiu um golpe e causou $danoTotal de dano!");
        }
        break;
        
      case "2":
        if (pocoesDeCura > 0) {
          hpJogador = (hpJogador + 35).clamp(0, hpMaxJogador);
          pocoesDeCura--;
          print("\n=> Você bebeu uma poção de cura e recuperou HP! (HP Atual: $hpJogador)");
        } else {
          print("\n=> Sem poções disponíveis! Você perdeu a chance de agir.");
        }
        break;
        
      case "3":
        defensorAtivo = true;
        print("\n=> Você assumiu postura defensiva! Dano do inimigo reduzido neste turno.");
        break;

      case "4":
        if (recargaFuria == 0) {
          print("\n⚡ FÚRIA DE GOLPES ACTIVADA!");
          int danoTotalFuria = 0;
          for (int i = 1; i <= 3; i++) {
            int golpe = 10 + random.nextInt(8);
            danoTotalFuria += golpe;
          }
          hpChefe -= danoTotalFuria;
          hpJogador -= 10;
          recargaFuria = 3; 
          print("=> Você desferiu 3 golpes rápidos causando $danoTotalFuria de dano total!");
          print("=> O esforço custou 10 de HP!");
        } else {
          print("\n=> Habilidade em recarga! Escolha outra ação.");
          continue; 
        }
        break;

      case "5":
        print("\n=> Você fugiu covardemente da arena...");
        hpJogador = 0;
        break;
        
      default:
        print("\n=> Comando inválido! Você se atrapalhou e perdeu o turno.");
        break;
    }

    if (hpChefe > 0 && hpJogador > 0) {
      int danoInimigo = 15 + random.nextInt(12); 
      if (defensorAtivo) {
        danoInimigo = (danoInimigo / 2).round();
      }
      
      hpJogador -= danoInimigo;
      print("🤖 O Autômato ataca e causa $danoInimigo de dano!\n");
    }
  }

  print("===========================================");
  if (hpChefe <= 0) {
    print("🏆 VITÓRIA! O Autômato Furioso foi destruído! Você venceu, $nomeJogador!");
  } else {
    print("💀 DERROTA! Você caiu em batalha...");
  }
  print("===========================================");
}