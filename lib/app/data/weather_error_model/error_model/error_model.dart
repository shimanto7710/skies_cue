import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';

part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({int? code, String? type, String? info}) =
      _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
