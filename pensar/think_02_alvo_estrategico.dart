class Inimigo {
  String nome;
  int hp;

  Inimigo(this.nome, this.hp);
}

void main() {
  List<Inimigo> horda = [
    Inimigo("Orc Bruto", 120),
    Inimigo("Goblin Arqueiro", 30),
    Inimigo("Troll gigante", 300),
    Inimigo("Goblin Ladino", 45)
  ];

  print("👁️ ANALISANDO O CAMPO DE BATALHA...\n");

  // Começamos assumindo que o primeiro inimigo é o mais fraco
  Inimigo alvoMaisFraco = horda[0];

  // DESAFIO PARA OS ALUNOS:
  /*
    1. Crie um laço 'for' para percorrer a 'horda' (pode começar do i = 1, pois o 0 já pegamos).
    2. Dentro do loop, faça um 'if':
       Se o 'hp' do inimigo ATUAL (horda[i]) for MENOR que o 'hp' do alvoMaisFraco:
       - Substitua o alvoMaisFraco pelo inimigo atual (alvoMaisFraco = horda[i]).
    3. Fora do loop, imprima quem foi o alvo escolhido e quanto de HP ele tem.
       (Se o código estiver certo, o alvo final deve ser o Goblin Arqueiro com 30 HP).
  */

  // [CÓDIGO DO ALUNO AQUI]
}