// ==========================================
// PROJETO PRÁTICO: REVISÃO MÓDULOS 1 E 2
// O Confronto Final - COMPLETO
// ==========================================

import 'dart:io';

void main() {
  print("===========================================");
  print("⚔️ BEM-VINDO À ARENA DE BATALHA ⚔️");
  print("===========================================\n");

  // 1. Variáveis de Estado
  stdout.write("Guerreiro, digite seu nome: ");
  String nomeJogador = stdin.readLineSync() ?? "Herói Anônimo";

  int hpJogador = 100;
  int hpChefe = 150;
  int pocoesDeCura = 3;

  // Constantes de dano
  const int danoAtaquePadrao = 25;
  const int danoChefe = 20;

  // Variáveis de controle
  String acao = "";
  bool estaDefendendo = false;

  print("\nUm imenso AUTÔMATO FURIOSO bloqueia seu caminho!");
  print("Prepare-se, $nomeJogador!\n");

  // 2. Loop Principal de Batalha
  while (hpJogador > 0 && hpChefe > 0) {
    
    // A defesa vale apenas para o turno atual
    estaDefendendo = false;

    print("-------------------------------------------");
    print("STATUS: $nomeJogador [HP: $hpJogador] | Poções: $pocoesDeCura");
    print("STATUS: Autômato [HP: $hpChefe]");
    print("-------------------------------------------");

    print("Escolha sua ação:");
    print("1 - ⚔️ Atacar");
    print("2 - 🧪 Usar Poção de Cura (+30 HP)");
    print("3 - 🏃 Fugir da Batalha");
    print("4 - 🛡️ Defender");
    print("5 - 🗡️ Fúria de Golpes");

    stdout.write("Sua escolha: ");

    acao = stdin.readLineSync() ?? "";

    // 3. Tomada de Decisão do Jogador
    switch (acao) {
      
      // ATAQUE NORMAL
      case "1":
        print("\n=> Você desferiu um golpe no Autômato!");
        hpChefe = hpChefe - danoAtaquePadrao;
        break;

      // POÇÃO
      case "2":
        if (pocoesDeCura > 0) {
          print("\n=> Você bebeu uma poção de cura e recuperou 30 HP!");

          hpJogador = hpJogador + 30;
          pocoesDeCura--;

          // Impede que o HP ultrapasse 100
          if (hpJogador > 100) {
            hpJogador = 100;
          }
        } else {
          print("\n=> OH NÃO! Suas poções acabaram! Você perdeu o turno.");
        }
        break;

      // FUGIR
      case "3":
        print("\n=> Você fugiu covardemente da arena...");
        hpJogador = 0;
        break;

      // DEFENDER
      case "4":
        print("\n=> Você levantou seu escudo e se preparou!");
        estaDefendendo = true;
        break;

      
      case "5":
        print("\n=> 🗡️ FÚRIA DE GOLPES! 🗡️");

        for (int golpe = 1; golpe <= 3; golpe++) {
          
          // Se o chefe morrer antes dos 3 golpes,
          // interrompe o FOR.
          if (hpChefe <= 0) {
            break;
          }

          hpChefe = hpChefe - 10;

          print("Golpe $golpe acertou!");
        }

        // Custo da habilidade
        hpJogador = hpJogador - 10;

        print("=> A sequência de golpes custou 10 HP pelo cansaço.");
        break;

      // OPÇÃO INVÁLIDA
      default:
        print("\n=> Comando inválido! Você tropeçou e perdeu o turno.");
        break;
    }

    // 4. Turno do Chefe
    // O chefe só ataca se:
    // - ainda estiver vivo
    // - o jogador não tiver fugido
    if (hpChefe > 0 && acao != "3") {
      
      if (estaDefendendo) {
        print(
          "=> O Autômato Furioso atacou, "
          "mas sua defesa reduziu o dano para 5!\n"
        );

        hpJogador = hpJogador - 5;
      } else {
        print(
          "=> O Autômato Furioso contra-ataca "
          "causando $danoChefe de dano!\n"
        );

        hpJogador = hpJogador - danoChefe;
      }
    }
  }

  // 5. Resultado da Batalha
  print("===========================================");

  if (hpChefe <= 0) {
    print(
      "🏆 VITÓRIA! O Autômato Furioso caiu! "
      "Você salvou o dia, $nomeJogador!"
    );
  } else if (acao == "3") {
    print("💨 Fim de jogo. Volte quando for mais forte.");
  } else {
    print("💀 DERROTA! O Autômato esmagou você...");
  }

  print("===========================================");

  
  
  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS (EXPANDINDO O JOGO)
  // ------------------------------------------
  /*
    DESAFIO 1: A Defesa!
    Adicione a opção "4 - 🛡️ Defender" no menu. 
    Se o jogador escolher defender, o ataque do Chefe naquele turno deve 
    tirar apenas 5 de HP em vez de 20. 
    (Dica: você vai precisar criar uma variável booleana 'estaDefendendo' e 
    usar um 'if' lá embaixo na hora do ataque do chefe!).

    DESAFIO 2: Ataque Múltiplo (Usando o FOR)
    Adicione a opção "5 - 🗡️ Fúria de Golpes".
    Crie um loop 'for' que rode 3 vezes. Em cada repetição, tire 10 de vida 
    do chefe e imprima "Golpe [1, 2, 3] acertou!". 
    Mas cuidado: essa habilidade deve custar 10 de vida do próprio jogador 
    pelo cansaço!
  */




}