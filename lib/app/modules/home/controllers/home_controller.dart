import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:skies_cue/app/data/weather_model/weather_model.dart';
import 'package:skies_cue/app/modules/home/home_service/home_mock_service.dart';
import 'package:skies_cue/app/modules/home/home_service/home_service.dart';
import 'package:skies_cue/app/modules/home/home_service/home_service_interface.dart';
import 'package:skies_cue/app/shared_pref/pref_manager.dart';
import 'package:skies_cue/app/utilities/constant.dart';
import '../../../data/region_model/region_model.dart';
import '../../../data/weather_error_model/weather_error_model.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  RxString apiState = AppState.loading.name.obs;
  RxString errorText = "".obs;
  Rx<WeatherModel> currentWeatherModel = const WeatherModel().obs;
  final List<RegionModel> regionList = Constant().regionModel;
  late HomeServiceInterface service;

  @override
  void onInit() async {
    String unit = await SharedPrefManager().getTemperatureUnit();
    String region = await SharedPrefManager().getRegion();

    // initialize service
    service = HomeService();
    _fetchCurrentWeatherData(unit, region);
    super.onInit();
  }

  void _fetchCurrentWeatherData(String unit, String region) async {
    apiState.value = AppState.loading.name;
    final Either<WeatherErrorModel, WeatherModel> response =
        await service.getCurrentWeather(unit, region);

    response.fold((WeatherErrorModel errorModel) {
      errorText.value = errorModel.error!.info!;
      apiState.value = AppState.failed.name;
    }, (WeatherModel result) {
      currentWeatherModel.value = result;
      SharedPrefManager().setTemperatureUnit(
          currentWeatherModel.value.request?.unit ?? Constant.celsiusUnit);
      apiState.value = AppState.loaded.name;
    });
  }

  // if faces any error then reload
  void onReload() async {
    String unit = await SharedPrefManager().getTemperatureUnit();
    String region = await SharedPrefManager().getRegion();
    _fetchCurrentWeatherData(unit, region);
  }

  // toggle temperature unit
  void changeUnit() async {
    String unit = await SharedPrefManager().getTemperatureUnit();
    String region = await SharedPrefManager().getRegion();
    if (unit == Constant.celsiusUnit) {
      _fetchCurrentWeatherData(Constant.fahrenheitUnit, region);
    } else {
      _fetchCurrentWeatherData(Constant.celsiusUnit, region);
    }
  }

  void navigateToDetailPage(HomeController homeController, String region){
    Get.toNamed(
      Routes.DETAIL,
      arguments: [
        {"controller": homeController},
        {"region": region}
      ],
    );
  }


}
