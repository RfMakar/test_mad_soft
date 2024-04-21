// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointModel _$PointModelFromJson(Map<String, dynamic> json) => PointModel(
      x: json['x'] as int,
      y: json['y'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$PointModelToJson(PointModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'status': instance.status,
    };
