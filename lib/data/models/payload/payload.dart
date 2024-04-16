import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';

part 'payload.freezed.dart';

part 'payload.g.dart';

@freezed
class Payload with _$Payload {
  const factory Payload({
    required List<Complex> payload,
  }) = _Payload;

  factory Payload.fromJson(Map<String, Object?> json) =>
      _$PayloadFromJson(json);
}
