// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComplexModel _$ComplexModelFromJson(Map<String, dynamic> json) => ComplexModel(
      title: json['title'] as String,
      remainingPoints: json['remaining_points'] as int,
      totalPointsCount: json['total_points_count'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => PointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComplexModelToJson(ComplexModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'remaining_points': instance.remainingPoints,
      'total_points_count': instance.totalPointsCount,
      'points': instance.points,
    };
