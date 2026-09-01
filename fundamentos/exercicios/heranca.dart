
class Veiculo {
  double velocidade;

  Veiculo({required this.velocidade});

  void acelerar(double incremento) {
    velocidade += incremento;
    print('Acelerando... Velocidade atual: ${velocidade.toStringAsFixed(2)} km/h');
  }
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro({required double velocidade, required this.quantidadePortas})
      : super(velocidade: velocidade);
}

void main() {

  Carro meuCarro = Carro(velocidade: 20.0, quantidadePortas: 4);

  print('Quantidade de portas: ${meuCarro.quantidadePortas}');
  print('Velocidade inicial: ${meuCarro.velocidade} km/h');

  meuCarro.acelerar(15.5);
  meuCarro.acelerar(10.0);
}