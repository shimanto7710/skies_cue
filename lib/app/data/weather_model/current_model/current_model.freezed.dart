// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentModel {
  @JsonKey(name: 'observation_time')
  String? get observationTime => throw _privateConstructorUsedError;
  int? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  int? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_icons')
  List<String>? get weatherIcons => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_descriptions')
  List<String>? get weatherDescriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  int? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int? get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String? get windDir => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get precip => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get cloudcover => throw _privateConstructorUsedError;
  int? get feelslike => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  int? get uvIndex => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  String? get isDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res, CurrentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'observation_time') String? observationTime,
      int? temperature,
      @JsonKey(name: 'weather_code') int? weatherCode,
      @JsonKey(name: 'weather_icons') List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions') List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed') int? windSpeed,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      int? pressure,
      int? precip,
      int? humidity,
      int? cloudcover,
      int? feelslike,
      @JsonKey(name: 'uv_index') int? uvIndex,
      int? visibility,
      @JsonKey(name: 'is_day') String? isDay});
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res, $Val extends CurrentModel>
    implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationTime = freezed,
    Object? temperature = freezed,
    Object? weatherCode = freezed,
    Object? weatherIcons = freezed,
    Object? weatherDescriptions = freezed,
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressure = freezed,
    Object? precip = freezed,
    Object? humidity = freezed,
    Object? cloudcover = freezed,
    Object? feelslike = freezed,
    Object? uvIndex = freezed,
    Object? visibility = freezed,
    Object? isDay = freezed,
  }) {
    return _then(_value.copyWith(
      observationTime: freezed == observationTime
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherIcons: freezed == weatherIcons
          ? _value.weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weatherDescriptions: freezed == weatherDescriptions
          ? _value.weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: freezed == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      precip: freezed == precip
          ? _value.precip
          : precip // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloudcover: freezed == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslike: freezed == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int?,
      uvIndex: freezed == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentModelCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$_CurrentModelCopyWith(
          _$_CurrentModel value, $Res Function(_$_CurrentModel) then) =
      __$$_CurrentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'observation_time') String? observationTime,
      int? temperature,
      @JsonKey(name: 'weather_code') int? weatherCode,
      @JsonKey(name: 'weather_icons') List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions') List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed') int? windSpeed,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      int? pressure,
      int? precip,
      int? humidity,
      int? cloudcover,
      int? feelslike,
      @JsonKey(name: 'uv_index') int? uvIndex,
      int? visibility,
      @JsonKey(name: 'is_day') String? isDay});
}

/// @nodoc
class __$$_CurrentModelCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res, _$_CurrentModel>
    implements _$$_CurrentModelCopyWith<$Res> {
  __$$_CurrentModelCopyWithImpl(
      _$_CurrentModel _value, $Res Function(_$_CurrentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationTime = freezed,
    Object? temperature = freezed,
    Object? weatherCode = freezed,
    Object? weatherIcons = freezed,
    Object? weatherDescriptions = freezed,
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressure = freezed,
    Object? precip = freezed,
    Object? humidity = freezed,
    Object? cloudcover = freezed,
    Object? feelslike = freezed,
    Object? uvIndex = freezed,
    Object? visibility = freezed,
    Object? isDay = freezed,
  }) {
    return _then(_$_CurrentModel(
      observationTime: freezed == observationTime
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherIcons: freezed == weatherIcons
          ? _value._weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weatherDescriptions: freezed == weatherDescriptions
          ? _value._weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: freezed == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      precip: freezed == precip
          ? _value.precip
          : precip // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloudcover: freezed == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslike: freezed == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int?,
      uvIndex: freezed == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentModel with DiagnosticableTreeMixin implements _CurrentModel {
  const _$_CurrentModel(
      {@JsonKey(name: 'observation_time')
          this.observationTime,
      this.temperature,
      @JsonKey(name: 'weather_code')
          this.weatherCode,
      @JsonKey(name: 'weather_icons')
          final List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions')
          final List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed')
          this.windSpeed,
      @JsonKey(name: 'wind_degree')
          this.windDegree,
      @JsonKey(name: 'wind_dir')
          this.windDir,
      this.pressure,
      this.precip,
      this.humidity,
      this.cloudcover,
      this.feelslike,
      @JsonKey(name: 'uv_index')
          this.uvIndex,
      this.visibility,
      @JsonKey(name: 'is_day')
          this.isDay})
      : _weatherIcons = weatherIcons,
        _weatherDescriptions = weatherDescriptions;

  factory _$_CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentModelFromJson(json);

  @override
  @JsonKey(name: 'observation_time')
  final String? observationTime;
  @override
  final int? temperature;
  @override
  @JsonKey(name: 'weather_code')
  final int? weatherCode;
  final List<String>? _weatherIcons;
  @override
  @JsonKey(name: 'weather_icons')
  List<String>? get weatherIcons {
    final value = _weatherIcons;
    if (value == null) return null;
    if (_weatherIcons is EqualUnmodifiableListView) return _weatherIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _weatherDescriptions;
  @override
  @JsonKey(name: 'weather_descriptions')
  List<String>? get weatherDescriptions {
    final value = _weatherDescriptions;
    if (value == null) return null;
    if (_weatherDescriptions is EqualUnmodifiableListView)
      return _weatherDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'wind_speed')
  final int? windSpeed;
  @override
  @JsonKey(name: 'wind_degree')
  final int? windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String? windDir;
  @override
  final int? pressure;
  @override
  final int? precip;
  @override
  final int? humidity;
  @override
  final int? cloudcover;
  @override
  final int? feelslike;
  @override
  @JsonKey(name: 'uv_index')
  final int? uvIndex;
  @override
  final int? visibility;
  @override
  @JsonKey(name: 'is_day')
  final String? isDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentModel(observationTime: $observationTime, temperature: $temperature, weatherCode: $weatherCode, weatherIcons: $weatherIcons, weatherDescriptions: $weatherDescriptions, windSpeed: $windSpeed, windDegree: $windDegree, windDir: $windDir, pressure: $pressure, precip: $precip, humidity: $humidity, cloudcover: $cloudcover, feelslike: $feelslike, uvIndex: $uvIndex, visibility: $visibility, isDay: $isDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentModel'))
      ..add(DiagnosticsProperty('observationTime', observationTime))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('weatherCode', weatherCode))
      ..add(DiagnosticsProperty('weatherIcons', weatherIcons))
      ..add(DiagnosticsProperty('weatherDescriptions', weatherDescriptions))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('windDegree', windDegree))
      ..add(DiagnosticsProperty('windDir', windDir))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('precip', precip))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('cloudcover', cloudcover))
      ..add(DiagnosticsProperty('feelslike', feelslike))
      ..add(DiagnosticsProperty('uvIndex', uvIndex))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('isDay', isDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentModel &&
            (identical(other.observationTime, observationTime) ||
                other.observationTime == observationTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._weatherIcons, _weatherIcons) &&
            const DeepCollectionEquality()
                .equals(other._weatherDescriptions, _weatherDescriptions) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.precip, precip) || other.precip == precip) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloudcover, cloudcover) ||
                other.cloudcover == cloudcover) &&
            (identical(other.feelslike, feelslike) ||
                other.feelslike == feelslike) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.isDay, isDay) || other.isDay == isDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      observationTime,
      temperature,
      weatherCode,
      const DeepCollectionEquality().hash(_weatherIcons),
      const DeepCollectionEquality().hash(_weatherDescriptions),
      windSpeed,
      windDegree,
      windDir,
      pressure,
      precip,
      humidity,
      cloudcover,
      feelslike,
      uvIndex,
      visibility,
      isDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      __$$_CurrentModelCopyWithImpl<_$_CurrentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentModelToJson(
      this,
    );
  }
}

abstract class _CurrentModel implements CurrentModel {
  const factory _CurrentModel(
      {@JsonKey(name: 'observation_time')
          final String? observationTime,
      final int? temperature,
      @JsonKey(name: 'weather_code')
          final int? weatherCode,
      @JsonKey(name: 'weather_icons')
          final List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions')
          final List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed')
          final int? windSpeed,
      @JsonKey(name: 'wind_degree')
          final int? windDegree,
      @JsonKey(name: 'wind_dir')
          final String? windDir,
      final int? pressure,
      final int? precip,
      final int? humidity,
      final int? cloudcover,
      final int? feelslike,
      @JsonKey(name: 'uv_index')
          final int? uvIndex,
      final int? visibility,
      @JsonKey(name: 'is_day')
          final String? isDay}) = _$_CurrentModel;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentModel.fromJson;

  @override
  @JsonKey(name: 'observation_time')
  String? get observationTime;
  @override
  int? get temperature;
  @override
  @JsonKey(name: 'weather_code')
  int? get weatherCode;
  @override
  @JsonKey(name: 'weather_icons')
  List<String>? get weatherIcons;
  @override
  @JsonKey(name: 'weather_descriptions')
  List<String>? get weatherDescriptions;
  @override
  @JsonKey(name: 'wind_speed')
  int? get windSpeed;
  @override
  @JsonKey(name: 'wind_degree')
  int? get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String? get windDir;
  @override
  int? get pressure;
  @override
  int? get precip;
  @override
  int? get humidity;
  @override
  int? get cloudcover;
  @override
  int? get feelslike;
  @override
  @JsonKey(name: 'uv_index')
  int? get uvIndex;
  @override
  int? get visibility;
  @override
  @JsonKey(name: 'is_day')
  String? get isDay;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
