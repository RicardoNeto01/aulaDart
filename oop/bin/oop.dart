
void main() {
  Aluno aluno = new Aluno("Ricardo", 20, 8);
  Aluno aluno2 = new Aluno.ganhadorChallenge("Felipão", 29);


  aluno.exibirInformacoes();
  aluno2.exibirInformacoes();
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

  Aluno.ganhadorChallenge(String nome, double nota){
    this.nome = nome;
    this.nota = nota;
  }

  void exibirInformacoes(){
    print("Nome do aluno: $nome");
    print("Idade do aluno: $idade");
    print("Nota do aluno: $nota");
  }
  
}