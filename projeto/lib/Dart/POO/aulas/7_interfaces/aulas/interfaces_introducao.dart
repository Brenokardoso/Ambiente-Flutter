abstract class Logger {
  void log(String menssager);
}

class ConsoleLogger implements Logger {
  @override
  void log(String menssager) {
    print("Log = $menssager");
  }
}

void main() {
  var consolelogger = ConsoleLogger();
  consolelogger.log("Perigo");
}
