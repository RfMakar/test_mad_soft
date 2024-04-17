import 'package:test_mad_soft/data/service/storage_info.dart';
import 'package:test_mad_soft/domain/repository/storage_info_service_repository.dart';

class StorageInfoServiceRepositoryImpl implements StorageInfoServiceRepository {
  StorageInfoServiceRepositoryImpl({
    required StorageInfoService storageInfoService,
  }) : _storageInfoService = storageInfoService;

  final StorageInfoService _storageInfoService;

  @override
  Future<double> getStorageTotal() {
    return _storageInfoService.getStorageTotal();
  }
}
