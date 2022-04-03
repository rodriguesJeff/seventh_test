import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:seventh_test/app/modules/login/login_bindings.dart';
import 'app/app_widget.dart';

void main() async {
  LoginBindings().dependencies();
  GetStorage.init();
  runApp(const AppWidget());
}
