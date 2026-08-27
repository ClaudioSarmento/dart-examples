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

  // Método: Uma ação que o atleta pode executar
  void atacar() {
    if (energia >= 20) {
      print("$nome cortou a bola com força!");
      energia -= 20; // Gasta 20 de energia energia = energia - 20 | 100 = 100 - 20 | 80
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
  atleta.nome = "Carlos";
  atleta.energia = 200;

  print("Energia antes de atacar pela primeira vez: ${atleta.energia}");
  // Usando a notação ponto para chamar as ações
  atleta.atacar();
  print("Atacou a primeira vez, Energia restante: ${atleta.energia}");

  atleta.atacar();
  print("Atacou pela segunda vez, Energia restante: ${atleta.energia}");

  atleta.atacar();
  print("Atacou pela terceira vez, Energia restante: ${atleta.energia}");

   atleta.atacar();
  print("Atacou pela quarta vez, Energia restante: ${atleta.energia}");

  atleta.atacar();
  print("Atacou pela quinta vez, Energia restante: ${atleta.energia}");

    atleta.atacar();
  print("Atacou pela sexta vez, Energia restante: ${atleta.energia}");

  // atleta.marcarPonto();
  

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
}