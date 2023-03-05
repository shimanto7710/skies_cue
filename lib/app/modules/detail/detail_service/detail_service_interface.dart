
import 'package:dartz/dartz.dart';
import '../../../data/weather_error_model/weather_error_model.dart';
import '../../../data/weather_model/weather_model.dart';

abstract class DetailServiceInterface{
  Future<Either<WeatherErrorModel, WeatherModel>> getCurrentWeather(String unit, String region);
}