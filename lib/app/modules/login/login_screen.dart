import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seventh_test/app/modules/login/login_controller.dart';
import 'package:seventh_test/app/modules/views/login_view.dart';

class LoginScreen extends GetView<LoginController> implements LoginView {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void goToHome() {
    // TODO: implement goToHome
  }
}
