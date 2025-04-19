import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static SharedPreferences? _prefs;

  // Initialize SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    print("✅ Local Storage initilized!");
  }

  // constants
  static const themeKey = 'theme';

  // Save a string value
  static Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // Retrieve a string value
  static String? getString(String key) {
    return _prefs?.getString(key);
  }

  // Save a boolean value
  static Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Retrieve a boolean value
  static bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Save an integer value
  static Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  // Retrieve an integer value
  static int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  // Remove a key
  static Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  // Clear all data
  static Future<void> clear() async {
    await _prefs?.clear();
  }
}
