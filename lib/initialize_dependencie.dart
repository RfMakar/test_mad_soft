import 'package:dio/dio.dart';
import 'package:test_mad_soft/data/data_sources/dio_client.dart';
import 'package:test_mad_soft/data/data_sources/rest_client.dart';
import 'package:test_mad_soft/data/repository/payload_repository_impl.dart';
import 'package:test_mad_soft/data/repository/storage_info_service_repository_impl.dart';
import 'package:test_mad_soft/data/service/storage_info.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';
import 'package:test_mad_soft/domain/repository/storage_info_service_repository.dart';
import 'package:test_mad_soft/presentation/state/complexes_store.dart';
import 'package:test_mad_soft/presentation/state/storage_info_service_store.dart';
import 'package:test_mad_soft/config/router/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:test_mad_soft/domain/usecases/get_payload.dart';

final sl = GetIt.instance;

Future<void> initializeDependencie() async {
  //router
  sl.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );

  //Dio
  sl.registerLazySingleton<DioClient>(
    () => DioClient(
      dio: Dio(),
    )..init(),
  );

  sl.registerLazySingleton<RestClient>(
    () => RestClient(
      sl<DioClient>().dio,
    ),
  );
  //Service local
  sl.registerLazySingleton<StorageInfoService>(
    () => StorageInfoService(),
  );

  sl.registerLazySingleton<StorageInfoServiceRepository>(
    () => StorageInfoServiceRepositoryImpl(
      storageInfoService: sl.call(),
    ),
  );

  //Repository
  sl.registerLazySingleton<PayloadRepository>(
    () => PayloadRepositoryImpl(
      restClient: sl(),
    ),
  );

  //UseCase
  sl.registerLazySingleton<GetPayLoadUseCase>(
    () => GetPayLoadUseCase(
      payloadRepository: sl(),
    ),
  );

  //store
  sl.registerLazySingleton<ComplexesStore>(
    () => ComplexesStore(
      getPayLoadUseCase: sl(),
    )..init(),
  );
  sl.registerLazySingleton<StorageInfoServiceStore>(
    () => StorageInfoServiceStore(
      storageInfoServiceRepository: sl.call(),
    )..init(),
  );
}
