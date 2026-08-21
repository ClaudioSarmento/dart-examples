import 'dart:async';

void main() async {
  int vidasAtuais = 70;
  const int cura = 10;
  const int maxVida = 100;

  print("Vida inicial: $vidasAtuais");

  print("Segurando a tecla Espaço por 2 segundos para curar $cura");
  await Future.delayed(Duration(seconds: 2));

  vidasAtuais += cura;
  print("Agora sua vida atual é $vidasAtuais de $maxVida");
  if (vidasAtuais > maxVida) {
    vidasAtuais = maxVida;
  }

  print("Vida atualizada: $vidasAtuais");
}