import 'package:flutter/material.dart';
import 'package:test_mad_soft/config/theme/app_themes.dart';
import 'package:test_mad_soft/config/router/app_router.dart';
import 'package:test_mad_soft/initialize_dependencie.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = sl<AppRouter>();
    return MaterialApp.router(
      title: 'Test',
      routerConfig: appRouter.config(),
      theme: appTheme,
    );
  }
}
