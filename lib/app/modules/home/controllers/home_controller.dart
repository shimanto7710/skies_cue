import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:skies_cue/app/data/weather_model/weather_model.dart';
import 'package:skies_cue/app/network/home_service/home_service.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import '../../../data/weather_error_model/weather_error_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxString apiStatus = AppState.loading.name.obs;
  RxString errorText = "".obs;
  late final service;

  @override
  void onInit() {
    service = HomeService();
    _fetchCurrentWeatherData();
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

  void _fetchCurrentWeatherData() async {
    final Either<WeatherErrorModel, WeatherModel> _response =
        await service.getCurrentWeatherResponse();

    _response.fold((WeatherErrorModel errorModel) {
      apiStatus.value = AppState.failed.name;
      errorText.value = errorModel.error!.info!;
    }, (WeatherModel result) {
      apiStatus.value = AppState.loaded.name;
    });
  }
}
