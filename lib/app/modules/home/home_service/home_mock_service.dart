import 'package:dartz/dartz.dart';
import 'package:skies_cue/app/data/weather_error_model/weather_error_model.dart';
import 'package:skies_cue/app/data/weather_model/weather_model.dart';
import 'package:skies_cue/app/modules/home/home_service/home_service_interface.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import '../../../data/weather_error_model/error_model/error_model.dart';

class HomeMockService implements HomeServiceInterface {
  @override
  Future<Either<WeatherErrorModel, WeatherModel>> getCurrentWeather(
      String unit, String region) async {
    final WeatherModel _weatherModel = Constant().weatherModel;
    return Right<WeatherErrorModel, WeatherModel>(_weatherModel);
  }
}
