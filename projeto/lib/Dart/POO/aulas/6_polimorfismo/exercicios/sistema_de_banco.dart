abstract class ContaBancaria {
  String? proprietarioDaConta;
  double saldo = 0;

  double sacar(double valor);
  double depositar(double valor);
  void calcularSaldo();
}

class ContaCorrente extends ContaBancaria {
  @override
  double sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      return saldo;
    }
    return saldo;
  }

  @override
  double depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      return saldo;
    }
    return saldo; 
  }

  @override
  void calcularSaldo() => print("Seu saldo é de $saldo reais");
}

void main() {
  var conta = ContaCorrente();
  conta.depositar(500);
  conta.sacar(233);
  conta.calcularSaldo();
}
