import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skies_cue/app/data/weather_model/request_model/request_model.dart';
import 'current_model/current_model.dart';
import 'location_model/location_model.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    RequestModel? request,
    LocationModel? location,
    CurrentModel? current,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
