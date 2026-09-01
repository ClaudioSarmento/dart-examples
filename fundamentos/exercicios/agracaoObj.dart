class Motor {
  String composicao = ""; 
  bool ligado = false;

  void ligar() {
    if (ligado) {
      print("O motor já está ligado! Pode acelerar!");
    } else {
      ligado = true; 
      print("Está ligando... Vrum vrum!");
    }
  }
}

class Carro {
  String marca;
  double preco;
  Motor motor;

  Carro(this.marca, this.preco) : motor = Motor();

  void darPartida() {
    motor.ligar(); 
  }
}

void main() {

  Carro meuCarro = Carro("Toyota", 90000.0);

  meuCarro.darPartida(); 

  meuCarro.darPartida(); 
}