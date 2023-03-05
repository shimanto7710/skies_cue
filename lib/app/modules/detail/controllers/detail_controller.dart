import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skies_cue/app/modules/detail/detail_service/detail_mock_service.dart';
import 'package:skies_cue/app/modules/detail/detail_service/detail_service.dart';
import 'package:skies_cue/app/modules/detail/detail_service/detail_service_interface.dart';
import 'package:skies_cue/app/modules/home/controllers/home_controller.dart';

import '../../../data/region_model/region_model.dart';
import '../../../data/weather_error_model/weather_error_model.dart';
import '../../../data/weather_model/weather_model.dart';
import '../../../shared_pref/pref_manager.dart';
import '../../../utilities/constant.dart';
import 'package:dartz/dartz.dart';

class DetailController extends GetxController {
  RxString apiState = AppState.loading.name.obs;
  RxString errorText = "".obs;
  Rx<WeatherModel> currentWeatherModel = const WeatherModel().obs;
  final List<RegionModel> regionList = Constant().regionModel;
  late DetailServiceInterface service;
  late HomeController homeController;
  late String selectedRegion;

  @override
  void onInit() async {
    var arguments = Get.arguments;
    homeController = arguments[0]['controller'];
    selectedRegion = arguments[1]['region'];

    String unit = await SharedPrefManager().getTemperatureUnit();
    String region = await SharedPrefManager().getRegion();

    service = DetailService();
    _fetchCurrentWeatherData(unit, selectedRegion);
    super.onInit();
  }

  void _fetchCurrentWeatherData(String unit, String region) async {
    apiState.value = AppState.loading.name;
    final Either<WeatherErrorModel, WeatherModel> response =
        await service.getCurrentWeather(unit, region);

    response.fold((WeatherErrorModel errorModel) {
      apiState.value = AppState.failed.name;
      errorText.value = errorModel.error!.info!;
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
    // String region = await SharedPrefManager().getRegion();
    _fetchCurrentWeatherData(unit, selectedRegion);
  }

  Future<void> setDefaultRegion() async {
    await SharedPrefManager()
        .setRegion(selectedRegion);
    Get.snackbar(Constant.setAsDefault,
        selectedRegion,
        snackPosition: SnackPosition.BOTTOM);
    homeController.onReload();
  }
}
