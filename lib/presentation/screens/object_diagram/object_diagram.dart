import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';
import 'package:test_mad_soft/internal/UI/app_assets.dart';
import 'package:test_mad_soft/presentation/widgets/point.dart';
import 'package:zoom_widget/zoom_widget.dart';

@RoutePage()
class ObjectDiagramScreen extends StatelessWidget {
  const ObjectDiagramScreen({super.key, required this.complex});
  final Complex complex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(complex.title),
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
          ...complex.points.map(
            (point) => PointWidget(point: point),
          ),
        ],
      ),
    );
  }
}
