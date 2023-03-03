import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel(
      {String? name,
        String? country,
        String? region,
        String? lat,
        String? lon,
        @JsonKey(name: 'timezone_id')
        String? timezoneId,
        @JsonKey(name: 'localtime')
        String? localtime,
        @JsonKey(name: 'localtime_epoch')
        int? localtimeEpoch,
        @JsonKey(name: 'utc_offset')
        String? utcOffset}) = _LocationModel;

  factory LocationModel.fromJson(Map<String,dynamic> json) => _$LocationModelFromJson(json);
}
