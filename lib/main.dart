import 'package:flutter/widgets.dart';
import 'package:test_mad_soft/application.dart';
import 'package:test_mad_soft/internal/functions/setup_dependencies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const Application());
}
