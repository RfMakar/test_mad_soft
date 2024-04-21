import 'package:test_mad_soft/core/resources/data_state.dart';
import 'package:test_mad_soft/core/usecases/usecase.dart';
import 'package:test_mad_soft/domain/entities/payload.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';

class GetPayLoadUseCase implements UseCase<DataState<PayloadEntity>, void> {
  final PayloadRepository _payloadRepository;

  GetPayLoadUseCase({
    required PayloadRepository payloadRepository,
  }) : _payloadRepository = payloadRepository;

  @override
  Future<DataState<PayloadEntity>> call({void params}) {
    return _payloadRepository.getPayload();
  }
}
