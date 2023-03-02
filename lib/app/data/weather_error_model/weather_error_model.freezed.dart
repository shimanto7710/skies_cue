// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherErrorModel _$WeatherErrorModelFromJson(Map<String, dynamic> json) {
  return _WeatherErrorModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherErrorModel {
  bool? get success => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherErrorModelCopyWith<WeatherErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherErrorModelCopyWith<$Res> {
  factory $WeatherErrorModelCopyWith(
          WeatherErrorModel value, $Res Function(WeatherErrorModel) then) =
      _$WeatherErrorModelCopyWithImpl<$Res, WeatherErrorModel>;
  @useResult
  $Res call({bool? success, ErrorModel? error});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$WeatherErrorModelCopyWithImpl<$Res, $Val extends WeatherErrorModel>
    implements $WeatherErrorModelCopyWith<$Res> {
  _$WeatherErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorModelCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherErrorModelCopyWith<$Res>
    implements $WeatherErrorModelCopyWith<$Res> {
  factory _$$_WeatherErrorModelCopyWith(_$_WeatherErrorModel value,
          $Res Function(_$_WeatherErrorModel) then) =
      __$$_WeatherErrorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, ErrorModel? error});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_WeatherErrorModelCopyWithImpl<$Res>
    extends _$WeatherErrorModelCopyWithImpl<$Res, _$_WeatherErrorModel>
    implements _$$_WeatherErrorModelCopyWith<$Res> {
  __$$_WeatherErrorModelCopyWithImpl(
      _$_WeatherErrorModel _value, $Res Function(_$_WeatherErrorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_WeatherErrorModel(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherErrorModel implements _WeatherErrorModel {
  const _$_WeatherErrorModel({this.success, this.error});

  factory _$_WeatherErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherErrorModelFromJson(json);

  @override
  final bool? success;
  @override
  final ErrorModel? error;

  @override
  String toString() {
    return 'WeatherErrorModel(success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherErrorModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherErrorModelCopyWith<_$_WeatherErrorModel> get copyWith =>
      __$$_WeatherErrorModelCopyWithImpl<_$_WeatherErrorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherErrorModelToJson(
      this,
    );
  }
}

abstract class _WeatherErrorModel implements WeatherErrorModel {
  const factory _WeatherErrorModel(
      {final bool? success, final ErrorModel? error}) = _$_WeatherErrorModel;

  factory _WeatherErrorModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherErrorModel.fromJson;

  @override
  bool? get success;
  @override
  ErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherErrorModelCopyWith<_$_WeatherErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
