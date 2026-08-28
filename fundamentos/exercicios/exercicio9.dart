import 'dart:async';

void main() {
  int bateria = 100;

  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (bateria > 5) {
      print("Usando o celular, bateria em $bateria%");
      bateria -= 1;
    } else {
      print("Bateria fraca! Carregue o celular.");
      timer.cancel(); 
    }
  });
}