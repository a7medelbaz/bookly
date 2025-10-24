import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  late Dio dio;
  final String url;
  ApiService({required this.url}) {
    BaseOptions options = BaseOptions(
      baseUrl: url,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> get({
    required String endPoint,
    @required String? token,
  }) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    try {
      final response = await dio.get(
        endPoint,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(
          "GET request error: ${response.statusCode}",
        );
      }
    } catch (e) {
      throw Exception("GET request error: $e");
    }
  }
}
