import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:seventh_test/app/modules/login/login_repository.dart';
import 'package:seventh_test/app/routes/app_pages.dart';

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
    if (isUsernameValid || !showErrors) return null;
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
    if (isPasswordValid || !showErrors) return null;
    return 'Senha inválida';
  }

  bool get isFormValid => isUsernameValid && isPasswordValid;

  bool showErrors = false;

  void setShowErrors(bool value) => showErrors = value;

  get submitForm => isFormValid ? login : setShowErrors(true);

  Future<void> login() async {
    final response =
        await repository.login(username: username, password: password);
    if (response != null) {
      final box = GetStorage();
      box.write('token', response);
      Get.toNamed(Routes.home);
    }
  }
}
