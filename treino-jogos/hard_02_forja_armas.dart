class Arma {
  String nome;
  int _nivel = 1;
  int _durabilidadeMaxima = 100;

  Arma(this.nome);

  int get nivel => _nivel;
  int get durabilidade => _durabilidadeMaxima;

  // DESAFIO PARA OS ALUNOS:
  /*
    Crie o SETTER chamado 'uparArma'.
    Ele deve receber a quantidade de níveis (ex: +1).
    
    REGRAS DA FORJA:
    1. A arma NUNCA pode passar do Nível 5. (Se tentar, imprima "Nível Máximo Atingido" e não faça nada).
    2. Se puder upar: adicione o valor ao _nivel.
    3. PENALIDADE: Para cada nível que a arma sobe, a _durabilidadeMaxima 
       deve cair em 15 pontos! (Ex: Se foi pro nível 2, durabilidade cai pra 85).
    4. Imprima o novo status da arma.
  */
  // [CÓDIGO DO ALUNO AQUI]

  void exibirStatus() {
    print("⚔️ Arma: $nome | Nível: $_nivel | Durabilidade: $_durabilidadeMaxima");
  }
}

void main() {
  Arma lamina = Arma("Lâmina de Marionete");
  
  // Testes que o aluno precisará fazer funcionar:
  lamina.exibirStatus();
  // lamina.uparArma = 1; // Deve ir pro Nvl 2, Durabilidade 85
  // lamina.uparArma = 1; // Deve ir pro Nvl 3, Durabilidade 70
  // lamina.uparArma = 5; // Deve ser bloqueado pela regra do Nvl 5 máximo!
}