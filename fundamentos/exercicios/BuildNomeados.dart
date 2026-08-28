class Carro {
  String modelo;
  String marca;
  double velocidadeAtual;

  Carro({
    required this.modelo,
    required this.marca,
    required this.velocidadeAtual,
  });

  Carro.parado({
    required this.modelo,
    required this.marca,
  }) : velocidadeAtual = 0;

  void exibirStatus() {
    print("[$marca] $modelo | Velocidade atual: $velocidadeAtual km/h");
  }
}

void main() {

  Carro ferrari = Carro.parado(
    modelo: "F8 Tributo",
    marca: "Ferrari",
  );

  Carro porsche = Carro(
    modelo: "911 Carrera",
    marca: "Porsche",
    velocidadeAtual: 120.0,
  );

  ferrari.exibirStatus();
  porsche.exibirStatus();
}