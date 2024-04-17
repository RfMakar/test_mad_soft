import 'package:test_mad_soft/data/api/api_client.dart';
import 'package:test_mad_soft/data/repository/payload_repository_impl.dart';
import 'package:test_mad_soft/data/repository/storage_info_service_repository_impl.dart';
import 'package:test_mad_soft/data/service/storage_info.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';
import 'package:test_mad_soft/domain/repository/storage_info_service_repository.dart';
import 'package:test_mad_soft/domain/state/complexes_store.dart';
import 'package:test_mad_soft/domain/state/storage_info_service_store.dart';
import 'package:test_mad_soft/internal/router/app_router.dart';
import 'package:test_mad_soft/internal/utils/sl.dart';

Future<void> setupDependencies() async {
  //router
  sl.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );
  //api
  sl.registerLazySingleton<ApiClient>(
    () => ApiClient(),
  );
  //service
  sl.registerLazySingleton<StorageInfoService>(
    () => StorageInfoService(),
  );
  //repository
  sl.registerLazySingleton<PayloadRepository>(
    () => PayloadRepositoryImpl(
      apiClient: sl.call(),
    ),
  );
  sl.registerLazySingleton<StorageInfoServiceRepository>(
    () => StorageInfoServiceRepositoryImpl(
      storageInfoService: sl.call(),
    ),
  );
  //store
  sl.registerLazySingleton<ComplexesStore>(
    () => ComplexesStore(
      payloadRepository: sl.call(),
    )..init(),
  );
  sl.registerLazySingleton<StorageInfoServiceStore>(
    () => StorageInfoServiceStore(
      storageInfoServiceRepository: sl.call(),
    )..init(),
  );
}
