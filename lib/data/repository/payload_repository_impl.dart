import 'package:test_mad_soft/data/api/api_client.dart';
import 'package:test_mad_soft/data/api/rest_client_api.dart';
import 'package:test_mad_soft/data/models/payload/payload.dart';
import 'package:test_mad_soft/domain/entities/api_response.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';

class PayloadRepositoryImpl extends PayloadRepository {
  PayloadRepositoryImpl({required ApiClient apiClient})
      : _apiClient = apiClient;
  final ApiClient _apiClient;
  RestClientApi get _restClient => _apiClient.restClient;

  @override
  Future<ApiResponse<Payload>> getPayload() async {
    final apiToBeCalled = _restClient.getPayload();
    return await _apiClient.safeApiCall(apiToBeCalled);
  }
}
