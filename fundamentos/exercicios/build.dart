import 'dart:io';

class Inimigo {
  String nome;
  int vida;

  // Construtor corrigido
  Inimigo({
    required this.nome,
    required this.vida,
  });

  void mostrar() {
    stdout.write("Seu inimigo tem nome $nome, e $vida de vida");
  }
}

void main() {
  Inimigo inimigo1 = Inimigo(
    nome: "Roberto",
    vida: 3467,
  );

  Inimigo inimigo2 = Inimigo(
    nome: "Robertine",
    vida: 67,
  );

  // Chamada correta nos objetos criados:
  inimigo1.mostrar();
  inimigo2.mostrar();
}