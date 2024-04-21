import 'package:json_annotation/json_annotation.dart';
import 'package:test_mad_soft/domain/entities/point.dart';

part 'point.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PointModel extends PointEntity {
  const PointModel({
    required super.x,
    required super.y,
    required super.status,
  });
  factory PointModel.fromJson(Map<String, dynamic> json) =>
      _$PointModelFromJson(json);
}
