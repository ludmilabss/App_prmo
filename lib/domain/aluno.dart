class Aluno {
  late String name;
  late String email;
  late int numeroMatricula;
  late String password;

  Aluno({
    required this.name,
    required this.email,
    required this.numeroMatricula });

  Aluno.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    password = json['password'];
    numeroMatricula = json['numero_matricula'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['numero_matricula'] = numeroMatricula;
    data['password'] = password;
    return data;
  }

}