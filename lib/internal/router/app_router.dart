import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';
import 'package:test_mad_soft/presentation/screens/object_diagram/object_diagram.dart';
import 'package:test_mad_soft/presentation/screens/objects/objects.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ObjectsRoute.page,
          path: '/objects',
          initial: true,
        ),
        AutoRoute(
          page: ObjectDiagramRoute.page,
        ),
      ];
}
