// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 02 - Métodos (Ações)
// ==========================================

/* 
  O QUE SÃO MÉTODOS?
  Nossos objetos já têm características (atributos), mas eles parecem estátuas: 
  não fazem nada! 
  Métodos são simplesmente FUNÇÕES que moram dentro de uma Classe. Eles dão 
  Ação e Movimento aos nossos objetos.
*/

class AtletaFutevolei {
  String nome = "";
  int energia = 100;
  int pontosMarcados = 0;

  // Construtor: Método especial que é chamado quando o objeto é criado
  // AtletaFutevolei({
  //   required this.nome
  // });

  // Método: Uma ação que o atleta pode executar
  void atacar() {
    if (energia >= 20) {
      print("$nome cortou a bola com força!");
      energia -= 20; // Gasta 20 de energia
    } else {
      print("$nome está exausto e mal conseguiu passar a bola...");
    }
  }

  void marcarPonto() {
    pontosMarcados++;
    print("Ponto de $nome! Total: $pontosMarcados");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  AtletaFutevolei atleta = AtletaFutevolei();
  print("Nome do atleta: ${atleta.nome}");
  //atleta.nome = "Carlos";

  // Usando a notação ponto para chamar as ações
  atleta.atacar();
  atleta.marcarPonto();
  
  print("Energia restante: ${atleta.energia}");

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma classe 'ContaBancaria' com os atributos: titular e saldo.
    2. Crie um método chamado 'depositar' que receba um valor (double) e 
       adicione esse valor ao saldo.
    3. Crie um método 'sacar' que receba um valor e subtraia do saldo 
       (Bônus: só deixe sacar se tiver saldo suficiente!).
    4. Teste tudo no main().
  */
  ContaBancaria conta = ContaBancaria();
  conta.titular = "Teresa";
  conta.depositar(70000.0);
  conta.sacar(200.0);
  conta.depositar(877555.0);
  conta.sacar(150.0);
  
}
class ContaBancaria {
  String titular = "";
  double saldo = 0.0;

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$${valor.toStringAsFixed(2)} realizado. Saldo atual: R\$${saldo.toStringAsFixed(2)}");
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$${valor.toStringAsFixed(2)} realizado. Saldo atual: R\$${saldo.toStringAsFixed(2)}");
    } else {
      print("Saldo insuficiente para saque de R\$${valor.toStringAsFixed(2)}. Saldo atual: R\$${saldo.toStringAsFixed(2)}");
    }
  }
}