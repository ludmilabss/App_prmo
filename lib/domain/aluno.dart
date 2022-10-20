class Aluno {
  late String name;
  late String email;
  late int matricula;
  late String password;

  Aluno({required this.name, required this.email, required this.matricula});

  Aluno.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    password = json['password'];
    matricula = json['numero_matricula'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['numero_matricula'] = matricula;
    data['password'] = password;
    return data;
  }
}
