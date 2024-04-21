import 'package:json_annotation/json_annotation.dart';
import 'package:test_mad_soft/data/models/point/point.dart';
import 'package:test_mad_soft/domain/entities/complex.dart';

part 'complex.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ComplexModel extends ComplexEntity {
  final List<PointModel> points;
  const ComplexModel({
    required super.title,
    required super.remainingPoints,
    required super.totalPointsCount,
    required this.points,
  }) : super(points: points);

  factory ComplexModel.fromJson(Map<String, dynamic> json) =>
      _$ComplexModelFromJson(json);
}
