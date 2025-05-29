import 'package:shared_preferences/shared_preferences.dart';

enum Config { languageChar }

class ShApp {
  late SharedPreferences _sharedPreferences;
  static final ShApp _instance = ShApp._();

  factory ShApp() {
    return _instance;
  }

  ShApp._();

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveLanguage({required String charLanguage}) async {
    await _sharedPreferences.setString(
        Config.languageChar.toString(), charLanguage);
  }

  String get languageChar =>
      _sharedPreferences.getString(Config.languageChar.toString()) ?? 'ar';
}
