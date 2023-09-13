class Numero {
  int valor;

  Numero(this.valor);

  // Operador de soma
  operator +(Numero outro) {
    return Numero(this.valor + outro.valor);
  }
}

void main(){
  var numero1 = Numero(10);
  var numero2 = Numero(20);

  var soma = numero1 + numero2;

  print(soma.valor); 

}