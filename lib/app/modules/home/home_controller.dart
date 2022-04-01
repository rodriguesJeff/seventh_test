import 'package:get/get.dart';
import 'package:seventh_test/app/modules/home/home_repository.dart';

class HomeController extends GetxController {
  HomeController({required this.repository});

  final HomeRepository repository;

  @override
  void onInit() async {
    super.onInit();
    await repository.getVideo();
  }
}
