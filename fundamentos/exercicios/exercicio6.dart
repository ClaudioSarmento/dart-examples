import 'dart:async';

void main() {
  var aplicativo = "Spotify";
  var nome = "Miguel";
  var musica = "Trepada em Cuiaba";
  var tempo = 3.24;
  var tempoAtual = 1.23;
  var restante = tempo - tempoAtual;
  var dataLancamento = "23-03-1999";
  var pausado = false;

  print("O usuário $nome está ouvindo a música:");
  print(musica);
  print("Tempo total ${tempo.toStringAsFixed(2)} | Já se passaram ${tempoAtual.toStringAsFixed(2)} | Restando: ${restante.toStringAsFixed(2)}");
  print("Lançado em: $dataLancamento");

  if (pausado) {
    print("E está pausado.");
  } else {
    print("Rodando...");

    Timer.periodic(const Duration(seconds: 1), (timer) {
      tempoAtual += 0.01;

      if (tempoAtual >= tempo) {
        tempoAtual = tempo;
        timer.cancel();
        print("Finalizado! Vamos para a próxima?");
      } else {
        print(tempoAtual.toStringAsFixed(2));
      }
    });
  }
}