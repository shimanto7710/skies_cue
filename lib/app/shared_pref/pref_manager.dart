

import 'package:shared_preferences/shared_preferences.dart';
import 'package:skies_cue/app/shared_pref/pref_constant.dart';

class SharedPrefManager {

  /*Future setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  Future setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  Future<int> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  Future setBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  Future<bool> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }*/

  Future setAccessKey(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PrefConstant.accessKey, value);
  }

  Future<String> getAccessKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(PrefConstant.accessKey) ?? "";
  }

}
