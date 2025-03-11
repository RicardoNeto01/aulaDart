void main() {
  Padding p = new Padding(top: 10, rigth: 10, bottom: 10, left: 10);
  Padding h = new Padding.horizontal(10);
  Padding v = new Padding.vertical(5);
  Padding sy = new Padding.symmetric(horizontal: 10, vertical: 5);

  print("Padding normal:\n" + p.toString());
  print("Padding horizontal:\n" + h.toString());
  print("Padding vertical:\n" + v.toString());
  print("Padding simétrico:\n" + sy.toString());
}

//Classe inicial.
class Padding{
  double? top;
  double? rigth;
  double? bottom;
  double? left;

// Deve permitir que o usuário informe valores nomeados para top, right, bottom e left. Se um valor não for informado, o padrão deve ser 0.
  Padding({double top = 0, double rigth = 0, double bottom = 0, double left = 0}){
    this.top = top;
    this.rigth = rigth;
    this.bottom = bottom;
    this.left = left;
  }

//Define left e right com o valor informado e mantém top e bottom como 0.
  Padding.horizontal(double value){
    this.left = value;
    this.rigth = value;
    this.top = 0;
    this.bottom = 0;
  }

//Define top e bottom com o valor informado e mantém left e right como 0.
  Padding.vertical(double value){
    this.left = 0;
    this.rigth = 0;
    this.top = value;
    this.bottom = value;
  }

//Define left e right com o valor de horizontal, e top e bottom com o valor de vertical.
  Padding.symmetric({double horizontal = 0, double vertical = 0}){
    this.left = horizontal;
    this.rigth = horizontal;
    this.top = vertical;
    this.bottom = vertical;
  }
  @override
  String toString() {
    return "Padding top: ${this.top}, Padding rigth: ${this.rigth}, Padding bottom: ${this.bottom}, Padding Left:${this.left}";
  }
}