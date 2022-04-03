import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seventh_test/app/modules/login/login_controller.dart';
import 'package:seventh_test/app/modules/login/widgets/text_form_field.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset('images/background.png'),
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 30),
              textFormField(
                false,
                controller.setUsername,
                'Nome de usuário',
                controller.usernameErrorMessage,
              ),
              const SizedBox(height: 15),
              textFormField(
                true,
                controller.setPassword,
                'Senha',
                controller.passwordErrorMessage,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  controller.submitForm();
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('ACESSAR'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
