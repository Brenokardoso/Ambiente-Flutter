class Funcionarios {
  String nome;
  String funcao;
  double salario;

  Funcionarios(this.nome, this.funcao, this.salario);
}

class Departamento {
  String nome_do_departamento;
  int piso;
  List<Funcionarios> funcionarios = []; // Lista de funcionários

  Departamento.esseMetodo(String name_of_departament, int level)
      : nome_do_departamento = name_of_departament,
        piso = level;

  // Método para adicionar funcionários ao departamento
  void adicionaFuncionario(String nome, String funcao, double salario) {
    var funcionario = Funcionarios(nome, funcao, salario);
    funcionarios.add(funcionario);
  }
}

void main() {
  var departamento = Departamento.esseMetodo("RH", 3);
  departamento.adicionaFuncionario("Alice", "Gerente", 6000.0);
  departamento.adicionaFuncionario("Bob", "Analista", 4000.0);

  // Exibir informações dos funcionários no departamento
  for (var funcionario in departamento.funcionarios) {
    print("Nome: ${funcionario.nome}, Função: ${funcionario.funcao}, Salário: ${funcionario.salario}");
  }
}
