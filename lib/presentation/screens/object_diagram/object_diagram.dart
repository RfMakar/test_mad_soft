import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_mad_soft/domain/entities/complex.dart';
import 'package:test_mad_soft/config/UI/app_assets.dart';
import 'package:test_mad_soft/presentation/widgets/point.dart';
import 'package:zoom_widget/zoom_widget.dart';

@RoutePage()
class ObjectDiagramScreen extends StatelessWidget {
  const ObjectDiagramScreen({super.key, required this.complexEntity});
  final ComplexEntity complexEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(complexEntity.title),
      ),
      body: Stack(
        children: [
          Zoom(
            initTotalZoomOut: false,
            maxZoomWidth: 1640,
            maxZoomHeight: 866,
            child: Image.asset(
              AppAssets.imageMockSheme,
            ),
          ),
          ...complexEntity.points.map(
            (point) => PointWidget(pointEntity: point),
          ),
        ],
      ),
    );
  }
}
