import 'package:test_mad_soft/data/models/payload/payload.dart';
import 'package:test_mad_soft/domain/entities/api_response.dart';

abstract class PayloadRepository {
  Future<ApiResponse<Payload>> getPayload();
}
