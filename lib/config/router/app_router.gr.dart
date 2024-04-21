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
      final args = routeData.argsAs<ObjectDiagramRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ObjectDiagramScreen(
          key: args.key,
          complexEntity: args.complexEntity,
        ),
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
class ObjectDiagramRoute extends PageRouteInfo<ObjectDiagramRouteArgs> {
  ObjectDiagramRoute({
    Key? key,
    required ComplexEntity complexEntity,
    List<PageRouteInfo>? children,
  }) : super(
          ObjectDiagramRoute.name,
          args: ObjectDiagramRouteArgs(
            key: key,
            complexEntity: complexEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ObjectDiagramRoute';

  static const PageInfo<ObjectDiagramRouteArgs> page =
      PageInfo<ObjectDiagramRouteArgs>(name);
}

class ObjectDiagramRouteArgs {
  const ObjectDiagramRouteArgs({
    this.key,
    required this.complexEntity,
  });

  final Key? key;

  final ComplexEntity complexEntity;

  @override
  String toString() {
    return 'ObjectDiagramRouteArgs{key: $key, complexEntity: $complexEntity}';
  }
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
