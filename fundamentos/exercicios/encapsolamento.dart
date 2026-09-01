class Carro {

  String modelo = "";

  int _velocidade = 0;

  int get velocidadeAtual {
    return _velocidade;
  }

  set acelerar(int quant) {
    _velocidade += quant; 

    if (_velocidade > 120) {
      _velocidade = 120;
      print("Velocidade limite de 120 km/h ");
    }
  }
}

void main() {
  Carro carro1 = Carro();
  carro1.modelo = "Uno com escada";

  print("Modelo: ${carro1.modelo}");
  print("Velocidade inicial: ${carro1.velocidadeAtual} km/h");

  print("\nAcelerando +50...");
  carro1.acelerar = 50;
  print("Velocidade atual: ${carro1.velocidadeAtual} km/h");

  print("\nAcelerando +50...");
  carro1.acelerar = 50;
  print("Velocidade atual: ${carro1.velocidadeAtual} km/h");

  print("\nAcelerando +40 (tentando ir a 140)...");
  carro1.acelerar = 40;
  print("Velocidade atual: ${carro1.velocidadeAtual} km/h");
}