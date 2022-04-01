import 'package:dio/dio.dart';
import 'package:seventh_test/app/core/utils.dart';

class LoginRepository {
  LoginRepository({required this.dio});

  final Dio dio;

  Future<String> login({
    required String username,
    required String password,
  }) async {
    final response = await dio.post(Utils.baseUrl + '/login');

    return response.data.token;
  }
}
