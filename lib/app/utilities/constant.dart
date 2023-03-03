import '../data/region_model/region_model.dart';
import '../data/weather_model/current_model/current_model.dart';
import '../data/weather_model/location_model/location_model.dart';
import '../data/weather_model/request_model/request_model.dart';
import '../data/weather_model/weather_model.dart';

class Constant {
  static const String baseUrl = "http://api.weatherstack.com/";
  static const String appName = "Skies Cue";
  static const String homeTitle = "Skies Cue";
  static const String accessKey = "f2d4b517c72f6f8612bb8b5f849e1a1a";
  static const String region = "BANGLADESH";
  static const String errorTitle = "Oups! Something went wrong!";
  static const String yourLocationNow = "Your Location Now";
  static const String seeDetails = "See Details";
  static const String fahrenheit = "\u2109";
  static const String fahrenheitUnit = "f";
  static const String celsiusUnit = "m";
  static const String celsius = "\u2103";
  static const String notFound = "Not Found";
  static const String tryAgain = "Try Again";

  final List<RegionModel> regionModel = [
    RegionModel(1, "Dhaka", "Dhaka City Corporation "),
    RegionModel(2, "Chittagong", "Chittagong City Corporation"),
    RegionModel(2, "Chittagong", "Brahmanbaria Sadar"),
    RegionModel(2, "Chittagong", "Cumilla Sadar"),
    RegionModel(2, "Chittagong", "Cumilla Sadar"),
    RegionModel(2, "Chittagong", "Cumilla Sadar"),
    RegionModel(2, "Chittagong", "Cumilla Sadar"),
    RegionModel(2, "Chittagong", "Cumilla Sadar"),
    RegionModel(2, "Chittagong", "Cumilla Sadar"),
  ];

  // mock data
  final weatherModel=const WeatherModel(
      request: RequestModel(
          language: "en",
          type: "City",
          query: "Dhaka, Bangladesh",
          unit: "m"),
      current: CurrentModel(
          observationTime: "09:05 PM",
          temperature: 22,
          weatherCode: 113,
          weatherIcons: [
            "https://cdn.worldweatheronline.com/images/wsymbols01_png_64/wsymbol_0008_clear_sky_night.png"
          ],
          weatherDescriptions: ["Clear"],
          windSpeed: 8,
          windDegree: 59,
          windDir: "ENE",
          pressure: 1015,
          precip: 0,
          humidity: 31,
          cloudcover: 0,
          feelslike: 24,
          uvIndex: 1,
          visibility: 10,
          isDay: "no"),
      location: LocationModel(
          name: "Dhaka",
          country: "Bangladesh",
          region: "",
          lat: "23.723",
          lon: "90.409",
          timezoneId: "Asia/Dhaka",
          localtime: "2023-03-03 03:05",
          localtimeEpoch: 1677812700,
          utcOffset: "6.0"));
}



enum AppState { loading, loaded, failed }

class AssetConstant {
  static const String errorImage = "assets/images/error.png";
}
