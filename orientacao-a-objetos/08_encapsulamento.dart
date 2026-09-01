// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 08 - Encapsulamento (Getters e Setters)
// ==========================================

/* 
  O QUE É ENCAPSULAMENTO?
  É a arte de PROTEGER os dados da sua classe.
  
  Imagine um jogo onde a vida máxima do personagem é 100. 
  Se a variável for "pública", qualquer pessoa (ou parte do código) 
  pode acidentalmente fazer: personagem.vida = 50000;
  
  Para evitar isso, tornamos a variável PRIVADA e criamos "porteiros":
  - GET (Pegar): Um porteiro que deixa você LER o valor, mas não tocar.
  - SET (Configurar): Um porteiro que deixa você MUDAR o valor, 
    mas só se você seguir as regras dele!
*/

class PersonagemRPG {
  String nome; // Público: qualquer um pode ver e mudar livremente

  // Privado: O underline (_) avisa o Dart "Tranque esta variável!"
  int _vida = 100; 
  
  PersonagemRPG(this.nome);

  // GETTER: O porteiro que deixa ler o valor.
  // Note que não usamos parênteses () como em funções normais.// método acessor
  int get vidaAtual { 
    return _vida;
  }

  // SETTER: O porteiro que filtra as alterações.
  set receberCura(int quantidade) {
    if (quantidade > 0) {
      _vida = _vida + quantidade;
      
      // Regra de segurança do SETTER: A vida nunca pode passar de 100!
      if (_vida > 100) {
        _vida = 100;
      }
      print("Cura aplicada! Vida de $nome agora é $_vida");
    } else {
      print("Erro: Você não pode curar um valor negativo ou zero!");
    }
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  PersonagemRPG heroi = PersonagemRPG("Arthur");

  // Lendo o valor através do GET (Usamos como se fosse uma variável normal)
  print("Herói: ${heroi.nome} | Vida: ${heroi.vidaAtual}");

  // Usando o SET para alterar o valor passando pelas regras
  heroi.receberCura = 50; // Vai travar no 100 por causa da regra!

  // Tentando "burlar" o sistema com um valor negativo
  heroi.receberCura = -20; // O SETTER vai bloquear essa ação.

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO: O Limitador de Velocidade
    
    1. Crie uma classe 'Carro'.
    2. Crie uma variável pública 'modelo' (String).
    3. Crie uma variável PRIVADA '_velocidade' (int) começando em 0.
    4. Crie um GET chamado 'velocidadeAtual' para ler a velocidade.
    5. Crie um SET chamado 'acelerar' que receba um número.
       - REGRA DO SETTER: Adicione o valor à '_velocidade'.
       - REGRA DO SETTER 2: O carro tem um bloqueador, ele NUNCA pode 
         passar de 120 km/h (se passar, force o valor para 120).
    6. No main(), crie o carro, acelere bastante e mostre a velocidade atual!
  */
}