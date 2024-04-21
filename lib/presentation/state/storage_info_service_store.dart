import 'package:mobx/mobx.dart';
import 'package:test_mad_soft/domain/repository/storage_info_service_repository.dart';

part 'storage_info_service_store.g.dart';

// ignore: library_private_types_in_public_api
class StorageInfoServiceStore = _StorageInfoServiceStore
    with _$StorageInfoServiceStore;

abstract class _StorageInfoServiceStore with Store {
  _StorageInfoServiceStore({
    required StorageInfoServiceRepository storageInfoServiceRepository,
  }) : _storageInfoServiceRepository = storageInfoServiceRepository;
  final StorageInfoServiceRepository _storageInfoServiceRepository;

  Future<void> init() async {
    await _getMemory();
    isLoading = false;
  }

  @observable
  bool isLoading = true;

  @observable
  int totalMemory = 0;

  @action
  Future<void> _getMemory() async {
    final res = await _storageInfoServiceRepository.getStorageTotal();
    totalMemory = res.toInt();
  }
}
