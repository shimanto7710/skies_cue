// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestModel _$$_RequestModelFromJson(Map<String, dynamic> json) =>
    _$_RequestModel(
      name: json['name'] as String?,
      query: json['query'] as String?,
      language: json['language'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$_RequestModelToJson(_$_RequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };
