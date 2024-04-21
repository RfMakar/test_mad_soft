import 'package:test_mad_soft/core/safe_api_call/safe_api_call.dart';
import 'package:test_mad_soft/data/data_sources/rest_client.dart';
import 'package:test_mad_soft/data/models/payload/payload.dart';
import 'package:test_mad_soft/core/resources/data_state.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';

class PayloadRepositoryImpl implements PayloadRepository {
  final RestClient _apiService;

  PayloadRepositoryImpl({
    required RestClient restClient,
  }) : _apiService = restClient;

  @override
  Future<DataState<PayLoadModel>> getPayload() async {
    final apiToBeCalled = _apiService.getPayload();
    return await safeApiCall(apiToBeCalled);
  }
}
