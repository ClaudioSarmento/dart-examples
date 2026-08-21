import 'dart:async';
import 'dart:io';

void main() {
  var aplicativo = "Spotify";
  var nome = "Miguel";
  var musica = "Trepada em Cuiaba";
  var tempo = 3.24;
  var tempoAtual = 1.23;
  var restante = tempo - tempoAtual;
  var datadeLancamento = "23-03-1999";
  var pausado = false;

  print("O usuario " + nome + " esta ouvindo a musica:");
  print(musica);
  print("Tempo total " + tempo.toString() + " ja se passaram " + tempoAtual.toString() + " restando: " + restante.toStringAsFixed(2));
  print("Lançado em: " + datadeLancamento);

if( pausado == true){

  print("E esta pausado: " + pausado.toString());
}
else{
  print("Rodando");

Timer.periodic(const Duration(seconds: 1), (timer){
  tempoAtual += 0.01;

if (tempoAtual >=tempo){
  tempoAtual = tempo;
  timer.cancel();
  print("Finalizado vamos para a proxima?");

}

else{
  print(tempoAtual);
}

});
}




}



