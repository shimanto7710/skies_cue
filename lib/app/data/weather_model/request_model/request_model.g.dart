// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestModel _$$_RequestModelFromJson(Map<String, dynamic> json) =>
    _$_RequestModel(
      type: json['type'] as String?,
      query: json['query'] as String?,
      language: json['language'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$_RequestModelToJson(_$_RequestModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };
