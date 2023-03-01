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
        String? timezoneId,
        String? localtime,
        int? localtimeEpoch,
        String? utcOffset}) = _LocationModel;

  factory LocationModel.fromJson(Map<String,dynamic> json) => _$LocationModelFromJson(json);
}
