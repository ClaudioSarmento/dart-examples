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
/*
class AtletaFutevolei {
  String nome = "";
  int energia = 100;
  int pontosMarcados = 0;
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
*/
class ContaBancaria{
  String titular = "";
  double saldo = 0;

  void depositar() {
  saldo += 15;
  print("Você depositou 15 reais, e agora tem $saldo reais");
  }
  void sacar() {
    if(saldo >= 15){
      saldo -= 15;
      print("Você sacou 15 reais, e agora tem $saldo reais");        
    }else{
      print("Saldo insuficiente");
    }
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  //AtletaFutevolei atleta = AtletaFutevolei();
  //atleta.nome = "Carlos";

  // Usando a notação ponto para chamar as ações
  //atleta.atacar();
  //atleta.marcarPonto();
  
 //print("Energia restante: ${atleta.energia}");

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
  ContaBancaria Seila = ContaBancaria();
  Seila.titular = "Dante";

  Seila.depositar();
  Seila.sacar();
}