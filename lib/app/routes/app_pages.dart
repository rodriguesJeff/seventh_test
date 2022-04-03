import 'package:get/get.dart';
import 'package:seventh_test/app/modules/login/login_bindings.dart';
import 'package:seventh_test/app/modules/login/login_screen.dart';
part 'app_routes.dart';

class AppPages {
  static const initial = Routes.initial;
  static final routes = [
    GetPage(
      name: Routes.initial,
      page: () => const LoginScreen(),
      binding: LoginBindings(),
    ),
  ];
}
