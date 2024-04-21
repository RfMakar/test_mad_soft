import 'package:equatable/equatable.dart';
import 'package:test_mad_soft/domain/entities/point.dart';

class ComplexEntity extends Equatable {
  final String title;
  final int remainingPoints;
  final int totalPointsCount;
  final List<PointEntity> points;

  const ComplexEntity({
    required this.title,
    required this.remainingPoints,
    required this.totalPointsCount,
    required this.points,
  });

  @override
  List<Object?> get props => [title, remainingPoints, totalPointsCount, points];
}
