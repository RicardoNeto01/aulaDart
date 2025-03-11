
void main() {
  Aluno aluno = new Aluno("Ricardo", 20, 8);
  aluno.exibirInformacoes();
}


class Aluno{
  String? nome;
  int? idade; 
  double? nota;
  
  Aluno(String nome, int idade, double nota){
    this.nome = nome;
    this.idade = idade;
    this.nota = nota;
  }

  void exibirInformacoes(){
    print("Nome do aluno: $nome");
    print("Idade do aluno: $idade");
    print("Nota do aluno: $nota");
  }
  
}