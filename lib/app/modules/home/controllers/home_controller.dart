import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:skies_cue/app/data/weather_model/weather_model.dart';
import 'package:skies_cue/app/network/home_service/home_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt isDataFetched = 0.obs;
  RxString errorText = "".obs;
  final service = HomeService();

  @override
  void onInit() {
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
    final Either<String, WeatherModel> _response =
        await service.getCurrentWeatherResponse();

    _response.fold((String error) {
      isDataFetched.value = -1;
      errorText.value=error;
    }, (WeatherModel result) {
      isDataFetched.value = 1;
    });
  }
// void increment() => count.value++;
}
