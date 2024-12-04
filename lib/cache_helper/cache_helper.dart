import 'package:shared_preferences/shared_preferences.dart';

class CacherHelper {
  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(
      {required String key, required String value}) async {
    return await prefs.setString(key, value);
  }

  static String? getData({required String key}) {
    return prefs.getString(key) ?? '';
  }

  static Future<bool> removeData({required String key}) async {
    return await prefs.remove(key);
  }
}
