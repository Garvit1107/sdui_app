import 'package:dio/dio.dart';
import 'package:sdui_models/sdui_models.dart';

class ApiClient {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://10.0.2.2:8080',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  static Future<ScreenModel> fetchScreen(String screenName) async {
    try {
      final response = await _dio.post('/screens/$screenName');

      return ScreenModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to load screen: ${e.response?.statusCode}');
    }
  }
}
