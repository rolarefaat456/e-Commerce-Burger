// fy el shared prefrences
import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static const String tokenKey = 'auth_token';
  static Future<void> saveToken( String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, token);
  }
  
  static Future<String?> getToken( String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.getString(tokenKey);
    return null;
  }

  static Future<void> clearToken( String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(tokenKey);
  }

}