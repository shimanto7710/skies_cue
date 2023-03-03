import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class RequestModel with _$RequestModel {
  const factory RequestModel(
      {String? type,
        String? query,
        String? language,
        String? unit}) = _RequestModel;

  factory RequestModel.fromJson(Map<String,dynamic> json) => _$RequestModelFromJson(json);
}
