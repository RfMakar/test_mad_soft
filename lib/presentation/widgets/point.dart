import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_mad_soft/domain/entities/point.dart';
import 'package:test_mad_soft/config/UI/app_assets.dart';

class PointWidget extends StatelessWidget {
  const PointWidget({super.key, required this.pointEntity});
  final PointEntity pointEntity;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pointEntity.x.toDouble(),
      top: pointEntity.y.toDouble(),
      child: pointEntity.status == 'completed'
          ? SvgPicture.asset(AppAssets.iconCompleted)
          : SvgPicture.asset(AppAssets.iconInCompleted),
    );
  }
}
