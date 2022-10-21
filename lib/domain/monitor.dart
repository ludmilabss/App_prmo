class Monitor{
  late String email;
  late String password;
  late String name;
  late bool monitor;


  Monitor({
    required this.email,
    required this.password,
    required this.name,
    required this.monitor});

  Monitor.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    monitor = json['monitor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['monitor'] = monitor;
    return data;
  }
}