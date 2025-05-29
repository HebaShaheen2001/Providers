import 'package:flutter/material.dart';
import 'package:providers/SharedPreferences/shared_preferences.dart';

class LanguageClass extends ChangeNotifier {
  String _currentLang = 'ar';

  String get currentLang => _currentLang;

  Future<void> loadLanguage() async {
    _currentLang = ShApp().languageChar;
    notifyListeners();
  }

  Future<void> changeLanguage(String newLang) async {
    if (_currentLang != newLang) {
      _currentLang = newLang;
      notifyListeners();
      await ShApp().saveLanguage(charLanguage: newLang);
    }
  }

  Future<void> toggleLanguage() async {
    _currentLang = _currentLang == 'ar' ? 'en' : 'ar';
    notifyListeners();
    await ShApp().saveLanguage(charLanguage: _currentLang);
  }
}
