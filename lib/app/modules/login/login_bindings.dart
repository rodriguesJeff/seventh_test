import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:seventh_test/app/modules/login/login_controller.dart';
import 'package:seventh_test/app/modules/login/login_repository.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() {
      return LoginController(repository: LoginRepository(dio: Dio()));
    });
  }
}
