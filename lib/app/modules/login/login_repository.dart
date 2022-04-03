import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:seventh_test/app/core/utils.dart';

class LoginRepository {
  LoginRepository({required this.dio});

  final Dio dio;

  Future<String?> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        Utils.baseUrl + '/login',
        data: {
          'username': username,
          'password': password,
        },
      );
      return response.data.token;
    } catch (e) {
      debugPrint("Error on request $e");
    }
    return null;
  }
}
