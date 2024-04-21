import 'package:json_annotation/json_annotation.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';
import 'package:test_mad_soft/domain/entities/payload.dart';

part 'payload.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PayLoadModel extends PayloadEntity {
  final List<ComplexModel> payload;
  const PayLoadModel({
    required this.payload,
  }) : super(
          payload: payload,
        );

  factory PayLoadModel.fromJson(Map<String, dynamic> json) =>
      _$PayLoadModelFromJson(json);
}
