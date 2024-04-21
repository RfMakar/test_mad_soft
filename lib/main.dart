import 'package:flutter/widgets.dart';
import 'package:test_mad_soft/application.dart';
import 'package:test_mad_soft/initialize_dependencie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencie();
  runApp(const Application());
}
