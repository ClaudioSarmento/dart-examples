class Conta {
  String titular = " ";

  // double outrosaldo = 0;

  double saldoBanco = 0;

  void depositar(double deposito) {

    // outrosaldo += deposito;
    saldoBanco += deposito;
  }

  void sacar(double valorDoSaque) {
    if(valorDoSaque <= saldoBanco){
       print("\n> Realizando saque de R\${$valorDoSaque}...");
       saldoBanco -= valorDoSaque;
           exibirSaldo;
    }else{
      print ("saldo insuficiente para saque");
    }

  }

  void exibirSaldo() {
    print("--------------------------------");
    print("Titular: $titular");
    print("Saldo atual (dindin): R\$ ${saldoBanco.toStringAsFixed(2)}");
    print("--------------------------------");
  }
}

void main() {

  Conta usu1 = Conta();
  usu1.titular = "Alex";


  print("=== Estado Inicial ===");
  usu1.exibirSaldo();
  double deposito = 100;
  double saque = 50;
  print("\n> Realizando depósito de R\${$deposito}...");
  usu1.depositar(deposito);
  usu1.exibirSaldo();


  usu1.sacar(saque);


}