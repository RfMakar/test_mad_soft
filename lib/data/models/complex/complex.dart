import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:test_mad_soft/data/models/point/point.dart';

part 'complex.freezed.dart';

part 'complex.g.dart';

@freezed
class Complex with _$Complex {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Complex({
    required String title,
    required int remainingPoints,
    required int totalPointsCount,
    required List<Point> points,
  }) = _Complex;

  factory Complex.fromJson(Map<String, Object?> json) =>
      _$ComplexFromJson(json);
}
