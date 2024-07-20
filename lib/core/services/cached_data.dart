import 'package:fruit_hub/core/utils/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CachedData {
  CachedData._();

  static late final SharedPreferences _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future<bool> setSkipOnboarding(bool value) async {
    return await _pref.setBool(Keys.skipOnboarding, value);
  }

  static bool getSkipOnboarding() {
    return _pref.getBool(Keys.skipOnboarding) ?? false;
  }
}
