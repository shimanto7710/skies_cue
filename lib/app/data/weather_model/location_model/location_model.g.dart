// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      name: json['name'] as String?,
      country: json['country'] as String?,
      region: json['region'] as String?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      timezoneId: json['timezoneId'] as String?,
      localtime: json['localtime'] as String?,
      localtimeEpoch: json['localtimeEpoch'] as int?,
      utcOffset: json['utcOffset'] as String?,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezoneId': instance.timezoneId,
      'localtime': instance.localtime,
      'localtimeEpoch': instance.localtimeEpoch,
      'utcOffset': instance.utcOffset,
    };
