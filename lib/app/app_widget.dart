import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seventh_test/app/modules/splash/splash_screen.dart';
import 'package:seventh_test/app/routes/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      home: const SplashScreen(),
    );
  }
}
