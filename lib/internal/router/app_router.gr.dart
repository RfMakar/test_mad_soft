// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ObjectDiagramRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ObjectDiagramScreen(),
      );
    },
    ObjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ObjectsScreen(),
      );
    },
  };
}

/// generated route for
/// [ObjectDiagramScreen]
class ObjectDiagramRoute extends PageRouteInfo<void> {
  const ObjectDiagramRoute({List<PageRouteInfo>? children})
      : super(
          ObjectDiagramRoute.name,
          initialChildren: children,
        );

  static const String name = 'ObjectDiagramRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ObjectsScreen]
class ObjectsRoute extends PageRouteInfo<void> {
  const ObjectsRoute({List<PageRouteInfo>? children})
      : super(
          ObjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ObjectsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
