int calc(int numero1, int numero2) {
  int result = numero1 + numero2;
  return result;
}

void main() {
  int numero1 = 7;
  int numero2 = 1;

  int resultado = calc(numero1, numero2);

  print("O time A esta com $numero1");
  print("E o time B esta com $numero2");

  print("Resultado somativo é ${resultado.toStringAsFixed(2)}");
}