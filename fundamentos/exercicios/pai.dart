abstract class NotificacaoApp {
  String mensagem;

  NotificacaoApp(this.mensagem);

  void enviar();
}

class NotificacaoEmail extends NotificacaoApp {

  NotificacaoEmail(String mensagem) : super(mensagem);

  @override
  void enviar() {
    print("Enviando E-mail: $mensagem ");
  }
}

class NotificacaoPush extends NotificacaoApp {
  NotificacaoPush(String mensagem) : super(mensagem);

  @override
  void enviar() {
    print("Alerta Push: $mensagem");
  }
}

void main() {

  NotificacaoApp email = NotificacaoEmail("Seu código de verificação cheg");
  NotificacaoApp push = NotificacaoPush("Alerta Defesa Civil: Chuvas intensas na região.");

  email.enviar();
  push.enviar();
}