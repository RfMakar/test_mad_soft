import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_mad_soft/data/api/rest_client_api.dart';
import 'package:test_mad_soft/domain/entities/api_response.dart';

class ApiClient {
  RestClientApi get restClient => RestClientApi(
        _buildDioClient(),
      );

  Future<ApiResponse<T>> safeApiCall<T>(
      Future<HttpResponse<T>> apiToBeCalled) async {
    try {
      final response = await apiToBeCalled;
      debugPrint(response.toString());
      return ApiResponseSucces<T>(response.data);
    } on DioException catch (e) {
      debugPrint(e.message.toString());
      return ApiResponseError<T>(e.message);
    }
  }

  Dio _buildDioClient() {
    final dio = Dio();
    dio.interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ]);
    return dio;
  }
}
