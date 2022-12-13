import 'package:app_prmo/backend/modules/usuario/usuario.dart';
import 'package:email_validator/email_validator.dart';

class UsuarioValidator {
  void nomeValidator({required String name}) {
    if (name == '' || name.isEmpty) {
      throw Exception("Campo nome vazio!");
    }
  }

  void emailValidator({required String email}) {
    if (!EmailValidator.validate(email)) {
      throw Exception("E-mail inválido.");
    }
  }

  void passwordValidator({required String password}) {
    if (password.length < 8) {
      throw Exception("A senha possui menos de 8 caracteres.");
    }
  }

  void enrolmentCodeValidator({required int enrolmentCode}) {
    if (enrolmentCode.toString().length != 10) {
      throw Exception("O codigo de matricula deve ter 10 caracteres");
    }
  }

  void fullUsuarioValidator({required Usuario usuario}) {
    try {
      nomeValidator(name: usuario.name);
      emailValidator(email: usuario.email);
      passwordValidator(password: usuario.password);
      enrolmentCodeValidator(enrolmentCode: usuario.enrolmentCode);
    } catch (exception) {
      rethrow;
    }
  }
}
