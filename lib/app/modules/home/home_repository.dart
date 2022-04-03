import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:seventh_test/app/core/utils.dart';

class HomeRepository {
  HomeRepository({required this.dio});
  final Dio dio;

  Future<String> getVideo() async {
    final box = GetStorage();
    final response = await dio.get(
      Utils.baseUrl + '/video/bunny.mp4',
      options: Options(headers: {
        'x-access-token': box.read('token'),
      }),
    );
    return response.data['url'];
  }
}
