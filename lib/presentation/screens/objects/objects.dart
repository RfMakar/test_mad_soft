import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ObjectsScreen extends StatelessWidget {
  const ObjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ViewScreen(),
    );
  }
}

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
