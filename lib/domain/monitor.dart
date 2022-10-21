class Monitor{
  late String email;
  late String password;
  late String name;


  Monitor({
    required this.email,
    required this.password,
    required this.name});

  Monitor.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    return data;
  }
}