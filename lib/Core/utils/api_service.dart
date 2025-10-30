import 'package:dio/dio.dart';

import 'constants.dart';

class ApiService {
  late Dio _dio;
  ApiService() {
    BaseOptions options = BaseOptions(
      baseUrl: MyUrlConstants.myBasicsBooksUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    _dio = Dio(options);
  }

  Future<List<dynamic>> get({
    required String endPoint,
  }) async {
    Map<String, dynamic> headers = {};
    try {
      final response = await _dio.get(
        endPoint,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception("GET request error: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("GET request error: $e");
    }
  }
}
