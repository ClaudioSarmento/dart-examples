// ==========================================
// PROJETO PRÁTICO: REVISÃO MÓDULOS 1 E 2
// O Confronto Final
// ==========================================

import 'dart:io';

void main() {
  print("===========================================");
  print("⚔️ BEM-VINDO À ARENA DE BATALHA ⚔️");
  print("===========================================\n");

  // 1. Variáveis de Estado (Módulo 1)
  stdout.write("Guerreiro, digite seu nome: ");
  String nomeJogador = stdin.readLineSync() ?? "Herói Anônimo";

  int hpJogador = 100;
  int hpChefe = 150;
  int pocoesDeCura = 3;
  bool estaDefendendo = false;
  
  // Constantes de dano
  const int danoAtaquePadrao = 25;
  const int danoChefe = 20;
  const int furiaDeGolpes = 10;
  const int danoDefesa = 5;

  // CORREÇÃO: Variável declarada fora do escopo do 'while' para ser reconhecida no final do jogo
  String acao = "";

  print("\nUm imenso AUTÔMATO FURIOSO bloqueia seu caminho!");
  print("Prepare-se, $nomeJogador!\n");

  // 2. Loop Principal de Batalha (Módulo 2: while)
  // A batalha continua ENQUANTO os dois estiverem vivos
  while (hpJogador > 0 && hpChefe > 0) {
    print("-------------------------------------------");
    print("STATUS: $nomeJogador [HP: $hpJogador] | Poções: $pocoesDeCura");
    print("STATUS: Autômato [HP: $hpChefe]");
    print("-------------------------------------------");
    
    print("Escolha sua ação:");
    print("1 - ⚔️ Atacar");
    print("2 - 🧪 Usar Poção de Cura (+30 HP)");
    print("3 - 🏃 Fugir da Batalha");
    print("4 - 🛡️ defender");
    print("5 - 🔥 ataque furia");
    stdout.write("Sua escolha: ");
    
    // Atualizamos a variável que já foi declarada lá em cima
    acao = stdin.readLineSync() ?? "";

    // 3. Tomada de Decisão do Jogador (Módulo 2: switch)
    switch (acao) {
      case "1":
        print("\n=> Você desferiu um golpe no Autômato!");
        hpChefe = hpChefe - danoAtaquePadrao; // Operadores matemáticos
        break;
        
      case "2":
        // 4. Lógica de Condição (Módulo 2: if/else)
        if (pocoesDeCura > 0) {
          print("\n=> Você bebeu uma poção de cura e recuperou 30 HP!");
          hpJogador = hpJogador + 30;
          pocoesDeCura--; // Diminui 1 poção
        } else {
          print("\n=> OH NÃO! Suas poções acabaram! Você perdeu o turno.");
        }
        break;
        
      case "3":
        print("\n=> Você fugiu covardemente da arena...");
        hpJogador = 0; // Força o fim do loop
        break;

      case "4":
      print("\n=> Você ergue seu escudo e se defende!");
      estaDefendendo = true;
      break;
      case "5":
      print("\n=> Furia de golpes");
      for (int i = 3;;){
      List<String> AtaqueFuria = ["ataque 1", "ataque 2", "ataque 3"];
      if(i == 3){
        print(AtaqueFuria[0]);
        hpChefe = hpChefe - furiaDeGolpes;
        print(AtaqueFuria[1]);
        hpChefe = hpChefe - furiaDeGolpes;
        print(AtaqueFuria[2]);
        hpChefe = hpChefe - furiaDeGolpes;
        hpJogador = hpJogador - 10;
        break;
      }
      } 

      default:
        print("\n=> Comando inválido! Você tropeçou e perdeu o turno.");
        break;
    }
    // 5. Turno do Chefe (Só ataca se o jogador não fugiu e o chefe ainda estiver vivo)
    if (hpChefe > 0 && acao != "3") {
      print("=> O Autômato Furioso contra-ataca causando $danoChefe de dano!\n");
      if(estaDefendendo){
        hpJogador = hpJogador - danoDefesa;
        estaDefendendo = false;
      }else{
      hpJogador = hpJogador - danoChefe;
      }
    }
  }

  // 6. Resultado da Batalha
  print("===========================================");
  if (hpChefe <= 0) {
    print("🏆 VITÓRIA! O Autômato Furioso caiu! Você salvou o dia, $nomeJogador!");
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