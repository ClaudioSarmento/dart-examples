import 'dart:io';

void main() {
  List<String> playlist = [];
  String opcao = "";

  print("🎧 BEM-VINDO AO DART MUSIC 🎧");

  // O app continua rodando até o usuário digitar "4"
  while (opcao != "4") {
    print("\n=======================");
    print("1 - 🎵 Adicionar Música");
    print("2 - 📜 Ver Playlist");
    print("3 - 🗑️ Limpar Playlist");
    print("4 - ❌ Sair do App");
    print("=======================");
    stdout.write("Escolha uma opção: ");
    
    opcao = stdin.readLineSync() ?? "";

    switch (opcao) {
      case "1":
        stdout.write("Digite o nome da música: ");
        String musica = stdin.readLineSync() ?? "";
        if (musica.isNotEmpty) {
          playlist.add(musica);
          print("✅ '$musica' adicionada com sucesso!");
        }
        break;

      case "2":
        // DESAFIO PARA OS ALUNOS AQUI:
        /*
          Crie um 'for' que percorra a lista 'playlist' e imprima as músicas
          no formato: 
          1 - Nome da Música
          2 - Nome da Música
          DICA: Use playlist.length no seu for.
          Se a lista estiver vazia, imprima "Sua playlist está vazia!".
        */
        print("--- SUA PLAYLIST ---");
        // [CÓDIGO DO ALUNO AQUI]
        break;

      case "3":
        playlist.clear();
        print("🧹 Playlist limpa!");
        break;

      case "4":
        print("Desligando o Dart Music... Até logo!");
        break;

      default:
        print("⚠️ Opção inválida!");
    }
  }
}