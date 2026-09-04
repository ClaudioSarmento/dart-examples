import 'dart:io';

class Mascote {
  String nome;
  
  // Variáveis PRIVADAS. O jogador não pode hackear a vida do bicho!
  int _energia = 50;
  int _fome = 50;

  Mascote(this.nome);

  // Getters para ler os status
  int get energia => _energia;
  int get fome => _fome;

  // Setter da Energia (Não pode passar de 100 nem ser menor que 0)
  set mudarEnergia(int valor) {
    _energia += valor;
    if (_energia > 100) _energia = 100;
    if (_energia < 0) _energia = 0;
  }
 

  // DESAFIO 1 PARA OS ALUNOS:
  /*
    Crie o Setter para a '_fome' chamado 'mudarFome'.
    A regra é a mesma da energia: adicione o valor recebido à _fome.
    Se passar de 100, trave em 100. Se cair abaixo de 0, trave em 0.
  */
  // [CÓDIGO DO ALUNO AQUI]

  void exibirStatus() {
    print("\n--- STATUS DO $nome ---");
    print("⚡ Energia: $_energia/100");
    print("🍗 Fome: $_fome/100");
    print("------------------------\n");
  }
}

void main() {
  print("🥚 UM NOVO MASCOTE NASCEU!");
  stdout.write("Dê um nome para ele: ");
  String nome = stdin.readLineSync() ?? "Bichinho";

  Mascote meuPet = Mascote(nome);
  String opcao = "";

  while (opcao != "4") {
    meuPet.exibirStatus();
    
    print("O que você quer fazer?");
    print("1 - ⚽ Brincar (Gasta energia, Aumenta fome)");
    print("2 - 🍕 Alimentar (Diminui fome)");
    print("3 - 🛏️ Dormir (Recupera energia)");
    print("4 - ❌ Sair");
    stdout.write("Escolha: ");
    
    opcao = stdin.readLineSync() ?? "";

    switch (opcao) {
      case "1":
        print("\n=> Você brincou com o ${meuPet.nome}!");
        meuPet.mudarEnergia = -20;
        // meuPet.mudarFome = 15; // O aluno precisa ter feito o setter para isso funcionar!
        break;
      
      // DESAFIO 2 PARA OS ALUNOS:
      /*
        Faça os cases "2" (Alimentar) e "3" (Dormir).
        - Alimentar deve diminuir a fome em -30.
        - Dormir deve aumentar a energia em +40 e aumentar a fome em +10.
      */
      // [CÓDIGO DO ALUNO AQUI]

      case "4":
        print("Tchau! Cuidou bem do seu mascote?");
        break;
        
      default:
        print("Opção inválida!");
    }
  }
}