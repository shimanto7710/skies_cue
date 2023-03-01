import '../../data/weather_model/weather_model.dart';
import '../api.dart';
import 'package:dartz/dartz.dart';

class HomeService {
  HomeService._internal();

  static final _singleton = HomeService._internal();

  factory HomeService() => _singleton;

  // static HomeService? _instance;
  // factory HomeService() => _instance ??= HomeService._();
  // HomeService._();

  /*Future<WeatherModel> getWeatherResponse() async {
    var response = await Api().dio.get('current');
    return WeatherModel.fromJson(response.data);
  }*/
  Future<Either<String, WeatherModel>> getCurrentWeatherResponse() async {
    try {
      var _response = await Api().dio.get('current');
      return Right<String, WeatherModel>(WeatherModel.fromJson(_response.data));
    } catch (exception) {
      return Left<String, WeatherModel>(exception.toString());
    }
  }
}
