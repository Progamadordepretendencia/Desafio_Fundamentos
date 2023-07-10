

void main() {

  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  for (var paciente in pacientes) {
    if (int.parse(paciente.split('|')[1])  > 20) {
      print(paciente.split('|')[0]);
    }
  }

  final desenvolvedor = [];
  final estudante = [];
  final dentista = [];
  final jornalista = []; 

  for (var profissao in pacientes) {
    final pacienteData = profissao.split('|');
    final nome = pacienteData[0];
    final ocupacao = pacienteData[2].toLowerCase();

    switch(ocupacao){
      case 'desenvolvedor':
      desenvolvedor.add(nome);
      break;
      case 'estudante':
      estudante.add(nome);
      break;
      case 'jornalista':
      jornalista.add(nome);
      break;
      case 'dentista':
      dentista.add(nome);
      default:
    }
  }
  print('Desenvolvedores: ');
  desenvolvedor.forEach(print);
  print('Estudantes: ');
  estudante.forEach(print);
  print('jonarlista: ');
  jornalista.forEach(print);
  print('denstista: ');
  dentista.forEach(print);

  print('Apresente a quantidade de pacientes que moram em SP');

  int sp = 0;

  for(var morar in pacientes){
    if(morar.split('|')[3].toUpperCase() == 'SP'){
    sp++;
    }else{
      continue;
    }
  }

print('O numero de pacientes que moram em Sao Paulo e: $sp');
}

