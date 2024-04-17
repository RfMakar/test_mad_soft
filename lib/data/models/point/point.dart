import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'point.freezed.dart';

part 'point.g.dart';

@freezed
class Point with _$Point {
  const factory Point({
    required int x,
    required int y,
    required String status,
  }) = _Point;

  factory Point.fromJson(Map<String, Object?> json) => _$PointFromJson(json);
}
