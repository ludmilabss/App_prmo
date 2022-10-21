class Usuario {
  late String id;
  late String email;
  late String password;
  late String name;
  late int enrolmentCode;
  late bool isMonitor;
  late bool isAdmin;

  Usuario({
    required this.email,
    required this.password,
    required this.name,
    required this.enrolmentCode,
    required this.isMonitor,
    required this.isAdmin,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    enrolmentCode = json['enrolmentCode'];
    isMonitor = json['isMonitor'];
    isAdmin = json['isAdmin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['enrolmentCode'] = enrolmentCode;
    data['isMonitor'] = isMonitor;
    data['isAdmin'] = isAdmin;
    return data;
  }
}
