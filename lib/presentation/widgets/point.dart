import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_mad_soft/data/models/point/point.dart';
import 'package:test_mad_soft/internal/UI/app_assets.dart';

class PointWidget extends StatelessWidget {
  const PointWidget({super.key, required this.point});
  final Point point;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: point.x.toDouble(),
      top: point.y.toDouble(),
      child: point.status == 'completed'
          ? SvgPicture.asset(AppAssets.iconCompleted)
          : SvgPicture.asset(AppAssets.iconInCompleted),
    );
  }
}
