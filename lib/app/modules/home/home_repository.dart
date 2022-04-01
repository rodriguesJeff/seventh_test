import 'package:dio/dio.dart';
import 'package:seventh_test/app/core/utils.dart';

class HomeRepository {
  HomeRepository({required this.dio});
  final Dio dio;

  Future<void> getVideo() async {
    await dio.get(Utils.baseUrl + '/video/bunny.mp4');
  }
}
