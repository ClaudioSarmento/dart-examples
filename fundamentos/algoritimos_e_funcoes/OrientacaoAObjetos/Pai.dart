// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 06 - Polimorfismo (@override)
// ==========================================

/* 
  O QUE É POLIMORFISMO?
  A palavra significa "muitas formas". Às vezes, o filho herda uma ação do pai, 
  mas quer fazer essa ação do SEU PRÓPRIO JEITO.
  Para isso, nós "sobrescrevemos" (passamos por cima) a regra do pai usando a 
  palavra '@override'.
*/

class Personagem {
  void atacar() {
    print("O personagem deu um soco básico.");
  }
}

class Mago extends Personagem {
  // O Mago não dá soco. Ele herda a capacidade de atacar, mas faz diferente!
  @override
  void atacar() {
    print("O mago lançou uma bola de fogo explosiva! 💥");
  }
}

class Arqueiro extends Personagem {
  @override
  void atacar() {
    print("O arqueiro disparou uma flecha certeira! 🏹");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  Personagem heroiComum = Personagem();
  Mago gandalf = Mago();
  Arqueiro legolas = Arqueiro();

  // Todos têm o método 'atacar()', mas cada um se comporta de uma forma!
  heroiComum.atacar();
  gandalf.atacar();
  legolas.atacar();

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma classe pai chamada 'NotificacaoApp' com um método 'enviar()'.
    2. Crie duas classes filhas: 'NotificacaoEmail' e 'NotificacaoPush'.
    3. Use o @override para que o e-mail diga "Enviando e-mail para o usuário..." 
       e o push diga "Enviando alerta na tela do celular...".
    4. Teste ambas no main().
  */
}