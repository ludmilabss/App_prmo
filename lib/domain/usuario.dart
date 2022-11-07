import 'dart:convert';
import 'dart:ffi';

class Usuario {
  late String id;
  late String email;
  late String password;
  late String name;
  late String enrolmentCode;
  late bool isMonitor;
  late bool isAdmin;

  Usuario(
      {required String id,
      required String email,
      required String password,
      required String name,
      required String enrolmentCode,
      required bool isMonitor,
      required bool isAdmin}) {
    this.id = enrolmentCode.toString();
    this.email = email;
    this.name = name;
    this.enrolmentCode = enrolmentCode;
    this.password = password;
    this.isMonitor = isMonitor;
    this.isAdmin = isAdmin;
  }

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    enrolmentCode = json['enrolmentCode'];

    //isMonitor = json['isMonitor'] == 1;


    if (json['isMonitor'] == 1) {
      isMonitor = true;
    } else {
      isMonitor = false;
    }
    if (json['isAdmin'] == 1) {
      isAdmin = true;
    } else {
      isAdmin = false;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['enrolmentCode'] = enrolmentCode;
    if (isMonitor) {
      data['isMonitor'] = '1';
    } else {
      data['isMonitor'] = '0';
    }
    if (isAdmin) {
      data['isAdmin'] = '1';
    } else {
      data['isAdmin'] = '0';
    }
    return data;
  }
}
