import 'package:get/get.dart';
import 'package:seventh_test/app/modules/login/login_repository.dart';

class LoginController extends GetxController {
  LoginController({required this.repository});

  final LoginRepository repository;

  String username = "";
  void setUsername(String value) => username = value;
  bool get isUsernameValid {
    if (username.isNotEmpty) return true;
    if (username.length > 5) return true;
    return false;
  }

  String? get usernameErrorMessage {
    if (isUsernameValid) return null;
    return 'Usuário inválido';
  }

  String password = "";
  void setPassword(String value) => password = value;
  bool get isPasswordValid {
    if (password.isNotEmpty && !showErrors) return true;
    if (password.length > 4) return true;
    return false;
  }

  String? get passwordErrorMessage {
    if (isPasswordValid && !showErrors) return null;
    return 'Senha inválida';
  }

  bool showErrors = false;

  void setShowErrors() => showErrors = true;

  get submitForm => isUsernameValid && isPasswordValid ? login : setShowErrors;

  Future<void> login() async {
    await repository.login(username: username, password: password);
  }
}
