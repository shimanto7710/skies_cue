import 'package:skies_cue/app/data/weather_error_model/error_model/error_model.dart';


import 'package:dartz/dartz.dart';

import '../../../data/weather_error_model/weather_error_model.dart';
import '../../../data/weather_model/weather_model.dart';
import '../../../network/api.dart';

class HomeService {
  HomeService._internal();
  static final _singleton = HomeService._internal();
  factory HomeService() => _singleton;

  Future<Either<WeatherErrorModel, WeatherModel>>
      getCurrentWeatherResponse(String unit) async {
    try {
      var _response = await Api().dio.get('current', queryParameters: {"units":unit});

      final WeatherModel _weatherModel = WeatherModel.fromJson(_response.data);

      if (_weatherModel.request == null) {
        return Left<WeatherErrorModel, WeatherModel>(
            WeatherErrorModel.fromJson(_response.data));
      }
      return Right<WeatherErrorModel, WeatherModel>(_weatherModel);
    } catch (exception) {
      final WeatherErrorModel errorModel = WeatherErrorModel(
          success: false,
          error: ErrorModel(
              code: 404,
              type: "something went wrong",
              info: exception.toString()));
      return Left<WeatherErrorModel, WeatherModel>(errorModel);
    }
  }
}
