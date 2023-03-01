// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  String? get name => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res, RequestModel>;
  @useResult
  $Res call({String? name, String? query, String? language, String? unit});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res, $Val extends RequestModel>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? query = freezed,
    Object? language = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$_RequestModelCopyWith(
          _$_RequestModel value, $Res Function(_$_RequestModel) then) =
      __$$_RequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? query, String? language, String? unit});
}

/// @nodoc
class __$$_RequestModelCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res, _$_RequestModel>
    implements _$$_RequestModelCopyWith<$Res> {
  __$$_RequestModelCopyWithImpl(
      _$_RequestModel _value, $Res Function(_$_RequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? query = freezed,
    Object? language = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_RequestModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestModel implements _RequestModel {
  const _$_RequestModel({this.name, this.query, this.language, this.unit});

  factory _$_RequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestModelFromJson(json);

  @override
  final String? name;
  @override
  final String? query;
  @override
  final String? language;
  @override
  final String? unit;

  @override
  String toString() {
    return 'RequestModel(name: $name, query: $query, language: $language, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, query, language, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      __$$_RequestModelCopyWithImpl<_$_RequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestModelToJson(
      this,
    );
  }
}

abstract class _RequestModel implements RequestModel {
  const factory _RequestModel(
      {final String? name,
      final String? query,
      final String? language,
      final String? unit}) = _$_RequestModel;

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$_RequestModel.fromJson;

  @override
  String? get name;
  @override
  String? get query;
  @override
  String? get language;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
