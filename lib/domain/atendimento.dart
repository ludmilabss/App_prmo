class Atendimento {
  late String turma;
  late String data1;
  late String nome;
  late String atividade;
  late String matricula;

  Atendimento({
    required this.turma,
    required this.data1,
    required this.nome,
    required this.atividade,
    required this.matricula,

  });
  Atendimento.fromJson(Map<String, dynamic>json) {
    turma = json['turma'];
    data1 = json['data1'];
    nome = json['nome'];
    atividade = json['atividade'];
    matricula = json['matricula'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['turma'] = turma;
    data['data1'] = data1;
    data['nome'] = nome;
    data['atividade'] = atividade;
    data['matricula'] = matricula;
    return data;
  }
}