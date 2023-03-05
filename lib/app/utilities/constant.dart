import '../data/region_model/region_model.dart';
import '../data/weather_model/current_model/current_model.dart';
import '../data/weather_model/location_model/location_model.dart';
import '../data/weather_model/request_model/request_model.dart';
import '../data/weather_model/weather_model.dart';

class Constant {
  static const String baseUrl = "http://api.weatherstack.com/";
  static const String appName = "Skies Cue";
  static const String homeTitle = "Skies Cue";
  // static const String accessKey = "bf7470df25255abf86b77379ce239a02";
  static const String accessKey = "973a57695e4935092b4fdfdff931b3ab";
  static const String region = "Dhaka, BANGLADESH";
  static const String errorTitle = "Oups! Something went wrong!";
  static const String yourLocationNow = "Your Location Now";
  static const String seeDetails = "See Details";
  static const String fahrenheit = "\u2109";
  static const String fahrenheitUnit = "f";
  static const String celsiusUnit = "m";
  static const String celsius = "\u2103";
  static const String notFound = "Not Found";
  static const String tryAgain = "Try Again";
  static const String windSpeed = "Wind Speed";
  static const String windDegree = "Wind Degree";
  static const String pressure = "Pressure";
  static const String humidity = "Humidity";
  static const String cloudCover = "Cloud Cover";
  static const String visibility = "visibility";
  static const String detail_title = "Details Page";
  static const String setAsDefault = "Set As Default";

  final List<RegionModel> regionModel = [
    RegionModel(id:1, division: "Dhaka", name: "Dhaka City Corporation ", region: "Dhaka, Bangladesh"),
    RegionModel(id: 2, division: "Chittagong", name: "Chittagong City Corporation", region: "Chittagong, Bangladesh"),
    RegionModel(id: 3, division: "Chittagong", name: "Brahmanbaria", region: "Brahmanbaria, Bangladesh"),
    RegionModel(id: 4, division: "Chittagong", name: "Comilla", region: "Comilla, Bangladesh"),
    RegionModel(id: 4, division: "Chittagong", name: "Chadpur", region: "Chadpur, Bangladesh"),
    RegionModel(id: 4, division: "Dhaka", name: "Tangail", region: "Tangail, Bangladesh"),
    RegionModel(id: 4, division: "Dhaka", name: "Narayanganj", region: "Narayanganj, Bangladesh"),
    RegionModel(id: 4, division: "Dhaka", name: "Gazipur", region: "Gazipur, Bangladesh"),
    RegionModel(id: 4, division: "Dhaka", name: "Gopalganj", region: "Gopalganj, Bangladesh"),
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
