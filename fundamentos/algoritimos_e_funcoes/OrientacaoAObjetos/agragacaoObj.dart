// ==========================================
// MÓDULO 4: ORIENTAÇÃO A OBJETOS
// Aula 07 - Composição e Agregação
// ==========================================

/* 
  OBJETOS DENTRO DE OBJETOS
  No Flutter, uma Tela é feita de vários Objetos (Botões, Textos, Imagens).
  Existem duas formas de colocar um objeto dentro do outro:
  
  1. COMPOSIÇÃO: Relação forte ("É feito de"). Se o objeto principal for destruído, 
     as partes também são. Exemplo: Um App é composto de Telas.
  
  2. AGREGAÇÃO: Relação fraca ("Tem um"). Os objetos funcionam de forma independente. 
     Exemplo: Uma Arena tem Atletas. Se a Arena fechar, os Atletas continuam existindo.
*/

// --- Classes Menores ---
class QuadraAreia {
  String nome;
  QuadraAreia(this.nome);
  void preparar() => print("Passando o rastelo e molhando a $nome...");
}

class Atleta {
  String nome;
  Atleta(this.nome);
}

// --- Classe Principal (Onde a mágica acontece) ---
class ArenaFutevolei {
  String nomeArena;
  
  // COMPOSIÇÃO: A Arena já nasce construindo suas próprias quadras internamente.
  // Se a Arena deixar de existir, as quadras dela deixam de existir.
  // A palavra late significa "mais tarde" em inglês e 
  // funciona como uma promessa que você faz ao Dart, avisando: "Confie em mim, 
  // essa variável está vazia agora, mas eu prometo preenchê-la antes de usá-la".
  late QuadraAreia quadraPrincipal; 
  
  // AGREGAÇÃO: A Arena possui uma lista de alunos, mas os alunos 
  // vêm de fora e existem independente da Arena.
  List<Atleta> alunosMatriculados = [];

  ArenaFutevolei(this.nomeArena) {
    // A Arena constrói sua quadra assim que é criada (Composição)
    quadraPrincipal = QuadraAreia("Quadra Principal de Futevôlei");
  }

  // Método para adicionar atletas que já existem no mundo (Agregação)
  void matricularAluno(Atleta novoAluno) {
    alunosMatriculados.add(novoAluno);
    print("${novoAluno.nome} agora treina na $nomeArena.");
  }

  void iniciarTreino() {
    print("\n--- INICIANDO TREINO NA $nomeArena ---");
    quadraPrincipal.preparar();
    print("Alunos presentes: ${alunosMatriculados.length}");
  }
}

void main() {
  // ------------------------------------------
  // EXEMPLOS PRÁTICOS
  // ------------------------------------------
  
  // 1. Criamos a Arena (isso automaticamente constrói a QuadraAreia lá dentro)
  ArenaFutevolei arena = ArenaFutevolei("Arena Futvôlei");

  // 2. Criamos Atletas soltos no mundo
  Atleta aluno1 = Atleta("Marcos");
  Atleta aluno2 = Atleta("Julia");

  // 3. Agregamos os Atletas à Arena
  arena.matricularAluno(aluno1);
  arena.matricularAluno(aluno2);

  // 4. Rodamos a ação principal
  arena.iniciarTreino();

  // ------------------------------------------
  // EXERCÍCIOS PARA OS ALUNOS
  // ------------------------------------------
  /*
    DESAFIO:
    1. Crie uma classe 'Motor' com o método 'ligar()'.
    2. Crie uma classe 'Carro'. Dentro do construtor dela, instancie o Motor (Composição).
    3. Crie um método no Carro chamado 'darPartida()' que utilize o método ligar() do Motor.
  */
}