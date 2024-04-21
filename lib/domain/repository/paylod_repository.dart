import 'package:test_mad_soft/core/resources/data_state.dart';
import 'package:test_mad_soft/domain/entities/payload.dart';

abstract class PayloadRepository {
  Future<DataState<PayloadEntity>> getPayload();
}
