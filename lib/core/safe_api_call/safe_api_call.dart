import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:test_mad_soft/core/resources/data_state.dart';

Future<DataState<T>> safeApiCall<T>(
  Future<HttpResponse<T>> apiToBeCalled,
) async {
  try {
    final response = await apiToBeCalled;
    return DataSuccess<T>(response.data);
  } on DioException catch (e) {
    return DataFailed<T>(e.message);
  }
}
