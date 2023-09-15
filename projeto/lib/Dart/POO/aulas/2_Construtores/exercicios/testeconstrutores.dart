
class Triangulo {
  double lado1;
  double lado2;
  double lado3;

  Triangulo(this.lado1, this.lado2, this.lado3);

  Triangulo.escaleno(double menor, double medio, double maior)
      : lado1 = menor,
        lado2 = medio,
        lado3 = maior;

  double calculaPerimetro() => (lado1 + lado2 + lado3);
}

main() {
  print("Digite os seus 3 lados do triângulo");
  var triangulo = Triangulo(20, 30, 50);
  var perimetro = triangulo.calculaPerimetro();
  print("Perímetro do triângulo regular: $perimetro");

  var perimetroEscaleno = Triangulo.escaleno(10, 30, 60);
  var perimetroEscalenoValor = perimetroEscaleno.calculaPerimetro();
  print("Perímetro do triângulo escaleno: $perimetroEscalenoValor");
}
