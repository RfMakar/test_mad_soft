// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayLoadModel _$PayLoadModelFromJson(Map<String, dynamic> json) => PayLoadModel(
      payload: (json['payload'] as List<dynamic>)
          .map((e) => ComplexModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PayLoadModelToJson(PayLoadModel instance) =>
    <String, dynamic>{
      'payload': instance.payload,
    };
