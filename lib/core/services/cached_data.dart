import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_keys.dart';

class CachedData {
  CachedData._();

  static late final SharedPreferences _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future<bool> setSkipOnboarding(bool value) async {
    return await _pref.setBool(AppKeys.skipOnboarding, value);
  }

  static bool getSkipOnboarding() {
    return _pref.getBool(AppKeys.skipOnboarding) ?? false;
  }

  static Future<bool> setIsLogin(bool value) async {
    return await _pref.setBool(AppKeys.isLogin, value);
  }

  static bool getIsLogin() {
    return _pref.getBool(AppKeys.isLogin) ?? false;
  }
}
