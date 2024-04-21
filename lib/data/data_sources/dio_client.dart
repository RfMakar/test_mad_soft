import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient({required Dio dio}) : _dio = dio;

  Dio get dio => _dio;

  void init() {
    _dio.interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ]);
  }
}
