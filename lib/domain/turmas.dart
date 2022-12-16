class Turmas{
  late  String nome;
  late  String turno;
  late String curso;

  Turmas({
    required this.nome,
    required this.turno,
    required this.curso,
  });

  Turmas.fromJson(Map<String, dynamic> json) {
    nome = json['name'];
    turno = json['turno'];
    curso = json['curso'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['turno'] = turno;
    data['curso'] = curso;
    return data;
  }
}