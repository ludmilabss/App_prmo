class Aluno {
  late String id;
  late String name;
  late String email;
  late int matricula;
  late String password;

  Aluno({required this.id, required this.name, required this.email, required this.matricula, required this.password});

  Aluno.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    matricula = json['matricula'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['matricula'] = matricula;
    data['password'] = password;
    return data;
  }
}
