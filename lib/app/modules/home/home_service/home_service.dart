import 'package:skies_cue/app/data/weather_error_model/error_model/error_model.dart';

import 'package:dartz/dartz.dart';

import '../../../data/weather_error_model/weather_error_model.dart';
import '../../../data/weather_model/weather_model.dart';
import '../../../network/api.dart';
import 'home_service_interface.dart';

class HomeService implements HomeServiceInterface {
  HomeService._internal();

  static final _singleton = HomeService._internal();

  factory HomeService() => _singleton;

  @override
  Future<Either<WeatherErrorModel, WeatherModel>> getCurrentWeather(
      String unit, String region) async {
    try {
      var response = await Api()
          .dio
          .get('current', queryParameters: {"units": unit, "query": region});

      final WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      if (weatherModel.request == null) {
        return Left<WeatherErrorModel, WeatherModel>(
            WeatherErrorModel.fromJson(response.data));
      }
      return Right<WeatherErrorModel, WeatherModel>(weatherModel);
    } catch (exception) {
      final WeatherErrorModel errorModel = WeatherErrorModel(
          success: false,
          error: ErrorModel(
              code: 500,
              type: "something went wrong",
              info: exception.toString()));
      return Left<WeatherErrorModel, WeatherModel>(errorModel);
    }
  }
}
