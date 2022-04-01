import 'package:get/get.dart';
import 'package:seventh_test/app/modules/login/login_screen.dart';
import 'package:seventh_test/app/modules/splash/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/', page: () => const LoginScreen()),
  ];
}
