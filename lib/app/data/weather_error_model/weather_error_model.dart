import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_model/error_model.dart';

part 'weather_error_model.freezed.dart';

part 'weather_error_model.g.dart';

@freezed
class WeatherErrorModel with _$WeatherErrorModel {
  const factory WeatherErrorModel({
    bool? success,
    ErrorModel? error
  }) = _WeatherErrorModel;

  factory WeatherErrorModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherErrorModelFromJson(json);
}
