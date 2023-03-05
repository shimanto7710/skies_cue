import 'package:skies_cue/app/data/weather_error_model/error_model/error_model.dart';

import 'package:dartz/dartz.dart';

import '../../../data/weather_error_model/weather_error_model.dart';
import '../../../data/weather_model/weather_model.dart';
import '../../../network/api.dart';
import 'detail_service_interface.dart';

class DetailService implements DetailServiceInterface {
  DetailService._internal();

  static final _singleton = DetailService._internal();

  factory DetailService() => _singleton;

  @override
  Future<Either<WeatherErrorModel, WeatherModel>> getCurrentWeather(
      String unit, String region) async {
    try {
      var _response = await Api()
          .dio
          .get('current', queryParameters: {"units": unit, "query": region});

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
