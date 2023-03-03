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
      timezoneId: json['timezone_id'] as String?,
      localtime: json['localtime'] as String?,
      localtimeEpoch: json['localtime_epoch'] as int?,
      utcOffset: json['utc_offset'] as String?,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone_id': instance.timezoneId,
      'localtime': instance.localtime,
      'localtime_epoch': instance.localtimeEpoch,
      'utc_offset': instance.utcOffset,
    };
