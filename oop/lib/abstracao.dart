void main() {
  Quadrado q = Quadrado(5);
  q.exibirInfo();
  print("Área do quadrado: ${q.calcularArea()}"); 

  Retangulo r = Retangulo(10, 20);
  r.exibirInfo();
  print("Área do retangulo: ${r.calcularArea()}");
}

abstract class Forma{
    double calcularArea(); //Abstrato
    void exibirInfo() {
    print("Essa é uma forma geométrica.");
  }
}

class Quadrado extends Forma{
    double lado;

    Quadrado(this.lado);

    double calcularArea(){
      return lado * lado;
    }
}

class Retangulo extends Forma{
  double lado, altura;

  Retangulo(this.lado, this.altura);

  @override
  double calcularArea() {
    return lado * altura;
  }
}