void main() {
  
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome 
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  //final listaPacienteNoRep = pessoas.toSet().toList();
  //listaPacienteNoRep.forEach(print);
  
  qtsPessoaMas(pessoas);

  pessoaMaisVelha(pessoas);

  
}

void qtsPessoaMas(List<String> pessoas){
  final masculinos = [];
  final femininos = [];
  final maioresDe18 = [];
  for (var pessoa in pessoas) {
    final pessoaData = pessoa.split('|');
    final nome = pessoaData[0];
    final genero = pessoaData[2];

    switch(genero){
      case 'Masculino':
      masculinos.add(nome);
      break;
      case 'Feminino':
      femininos.add(nome);
      default:
    }
     if (int.parse(pessoa.split("|")[1])>18) {
       maioresDe18.add(nome);
    }

  }
  print("O total de pacientes masculinos são ${masculinos.length}");
  masculinos.forEach(print);
  print("-----------------------");
  print("O total de pacientes femininos são ${femininos.length}");
  femininos.forEach(print);
  print("-----------------");
  print("O numero de pessoas maiores de 18 é: ${maioresDe18.length}");
  maioresDe18.forEach(print);
}

void pessoaMaisVelha(List<String> pessoas){
  pessoas.toSet();
  final pessoasNoRep = pessoas.toList();
  final pessoaMaisVelha = pessoasNoRep.where((paciente) => 
  paciente.split('|')[1] != null).toList();
  pessoaMaisVelha.sort((pessoa1, pessoa2) => int.parse(pessoa2.split('|')[1]).compareTo(int.parse(pessoa1.split('|')[1])));
  print("------------------------");
  print('${pessoaMaisVelha[0].split('|')[0]} - ${pessoaMaisVelha[0].split('|')[1]}');
}

