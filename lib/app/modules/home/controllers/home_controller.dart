import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:skies_cue/app/data/weather_model/weather_model.dart';
import 'package:skies_cue/app/shared_pref/pref_manager.dart';
import 'package:skies_cue/app/utilities/constant.dart';
import '../../../data/region_model/region_model.dart';
import '../../../data/weather_error_model/weather_error_model.dart';
import '../home_service/home_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxString apiState = AppState.loading.name.obs;
  RxString errorText = "".obs;
  Rx<WeatherModel> currentWeatherModel = WeatherModel().obs;
  final List<RegionModel> regionList = Constant().regionModel;

  @override
  void onInit() async {
    String unit = await SharedPrefManager().getTemperatureUnit();
    // apiStatus.value = AppState.loaded.name;
    // currentWeatherModel.value = Constant().weatherModel;

    _fetchCurrentWeatherData(unit);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _fetchCurrentWeatherData(String unit) async {
    apiState.value=AppState.loading.name;
    final Either<WeatherErrorModel, WeatherModel> _response =
        await HomeService().getCurrentWeatherResponse(unit);

    _response.fold((WeatherErrorModel errorModel) {
      apiState.value = AppState.failed.name;
      errorText.value = errorModel.error!.info!;
    }, (WeatherModel result) {
      currentWeatherModel.value = result;
      SharedPrefManager().setTemperatureUnit(currentWeatherModel.value.request?.unit??Constant.celsiusUnit);
      apiState.value = AppState.loaded.name;
    });
  }

  // if faces any error then reload
  void onReload() async {
    String unit = await SharedPrefManager().getTemperatureUnit();
    _fetchCurrentWeatherData(unit);
  }

  // toggle temperature unit
  void changeUnit() async {
    String unit = await SharedPrefManager().getTemperatureUnit();
    if(unit==Constant.celsiusUnit){
      _fetchCurrentWeatherData(Constant.fahrenheitUnit);
    }else{
      _fetchCurrentWeatherData(Constant.celsiusUnit);
    }

  }
}
