// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherErrorModel _$$_WeatherErrorModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherErrorModel(
      success: json['success'] as bool?,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherErrorModelToJson(
        _$_WeatherErrorModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
    };
