import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  StorageUtil._internal();

  factory StorageUtil() => _instance;

  static final StorageUtil _instance = StorageUtil._internal();

  static late SharedPreferences _sharedPreferences;

  static Future<StorageUtil> initSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _instance;
  }

  void setString(String key, String value) {
    _sharedPreferences.setString(key, value);
  }

  String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  Future<bool> remove(String key) {
    return _sharedPreferences.remove(key);
  }
}
