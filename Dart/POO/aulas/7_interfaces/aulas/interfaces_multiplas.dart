
abstract class Logger {
  void log(String message);
}

abstract class EmailSender {
  void sendEmail(String recipient, String message);
}


class NotificationService implements Logger, EmailSender {
  @override
  void log(String message) {
    print("Log: $message");
  }

  @override
  void sendEmail(String recipient, String message) {
    print("Email enviado para $recipient: $message");
  }
}

void main() {
  final notifier = NotificationService();
  notifier.log("Mensagem de log");
  notifier.sendEmail("user@example.com", "Conteúdo do email");
}
