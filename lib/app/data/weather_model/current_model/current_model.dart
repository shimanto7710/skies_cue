import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_model.freezed.dart';
part 'current_model.g.dart';

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel({String? observationTime,
    int? temperature,
    int? weatherCode,
    List<String>? weatherIcons,
    List<String>? weatherDescriptions,
    int? windSpeed,
    int? windDegree,
    String? windDir,
    int? pressure,
    int? precip,
    int? humidity,
    int? cloudcover,
    int? feelslike,
    int? uvIndex,
    int? visibility,
    String? isDay,
  })= _CurrentModel;

  factory CurrentModel.fromJson(Map<String, dynamic> json)=>_$CurrentModelFromJson(json);
}