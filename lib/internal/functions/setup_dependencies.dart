import 'package:test_mad_soft/data/api/api_client.dart';
import 'package:test_mad_soft/data/repository/payload_repository_impl.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';
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
  //repository
  sl.registerLazySingleton<PayloadRepository>(
    () => PayloadRepositoryImpl(
      apiClient: sl.call(),
    ),
  );
}
