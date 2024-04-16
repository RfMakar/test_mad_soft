import 'package:test_mad_soft/internal/router/app_router.dart';
import 'package:test_mad_soft/internal/utils/sl.dart';

Future<void> setupDependencies() async {
  //router
  sl.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );
}
