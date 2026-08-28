// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 02 - Métodos (Ações)
// ==========================================

// Métodos são funções que ficam dentro de uma classe.
// Eles dão ações aos objetos.

// ==========================================
// CLASSE ATLETA
// ==========================================

class AtletaFutevolei {
  String nome = "";
  int energia = 100;
  int pontosMarcados = 0;

  // Método para atacar
  void atacar() {
    if (energia >= 20) {
      print("$nome cortou a bola com força!");
      energia -= 20;
    } else {
      print("$nome está exausto e mal conseguiu passar a bola...");
    }
  }

  // Método para marcar ponto
  void marcarPonto() {
    pontosMarcados++;
    print("Ponto de $nome! Total: $pontosMarcados");
  }
}

// ==========================================
// CLASSE CONTA BANCÁRIA
// ==========================================

class ContaBancaria {
  String titular = "";
  double saldo = 0.0;

  // Método para depositar dinheiro
  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$${valor.toStringAsFixed(2)} realizado.");
    print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
  }

  // Método para sacar dinheiro
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$${valor.toStringAsFixed(2)} realizado.");
      print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
    } else {
      print("Saldo insuficiente!");
    }
  }
}

// ==========================================
// MAIN
// ==========================================

void main() {
  // ------------------------------------------
  // EXEMPLO: ATLETA
  // ------------------------------------------

  AtletaFutevolei atleta = AtletaFutevolei();

  atleta.nome = "Carlos";

  atleta.atacar();
  atleta.marcarPonto();

  print("Energia restante: ${atleta.energia}");

  // ------------------------------------------
  // EXEMPLO: CONTA BANCÁRIA
  // ------------------------------------------

  ContaBancaria conta = ContaBancaria();

  conta.titular = "Felipe";
  conta.saldo = 100.0;

  print("\nTitular da conta: ${conta.titular}");
  print("Saldo inicial: R\$${conta.saldo.toStringAsFixed(2)}");

  // Depositando dinheiro
  conta.depositar(50.0);

  // Sacando dinheiro
  conta.sacar(30.0);

  // Tentando sacar mais dinheiro do que possui
  conta.sacar(200.0);
  
}