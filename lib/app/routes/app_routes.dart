import 'package:get/get.dart';
import 'package:seventh_test/app/modules/splash/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
  ];
}
