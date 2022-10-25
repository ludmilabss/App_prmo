class Monitor{
  late String email;
  late String password;
  late String name;
  late String matricula;


  Monitor({required this.email, required this.password, required this.name, required this.matricula});

  Monitor.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    matricula = json['matricula'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['matricula'] = matricula;
    return data;
  }
}