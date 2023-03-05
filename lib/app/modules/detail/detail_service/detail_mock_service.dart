import 'package:dartz/dartz.dart';
import 'package:skies_cue/app/data/weather_error_model/weather_error_model.dart';
import 'package:skies_cue/app/data/weather_model/weather_model.dart';
import 'package:skies_cue/app/modules/detail/detail_service/detail_service_interface.dart';
import 'package:skies_cue/app/modules/home/home_service/home_service_interface.dart';
import 'package:skies_cue/app/utilities/constant.dart';

class DetailMockService implements DetailServiceInterface {
  @override
  Future<Either<WeatherErrorModel, WeatherModel>> getCurrentWeather(
      String unit, String region) async {
    final WeatherModel _weatherModel = Constant().weatherModel;
    return Right<WeatherErrorModel, WeatherModel>(_weatherModel);
  }
}
