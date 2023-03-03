import 'package:shared_preferences/shared_preferences.dart';
import 'package:skies_cue/app/shared_pref/pref_constant.dart';
import 'package:skies_cue/app/utilities/constant.dart';

class SharedPrefManager {
  Future setTemperatureUnit(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PrefConstant.temperatureUnitKey, value);
  }

  Future<String> getTemperatureUnit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(PrefConstant.temperatureUnitKey) ??
        Constant.celsiusUnit;
  }

  Future setRegion(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PrefConstant.regionKey, value);
  }

  Future<String> getRegion() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(PrefConstant.regionKey) ?? Constant.region;
  }
}
