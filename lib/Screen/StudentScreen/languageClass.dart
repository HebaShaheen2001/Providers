import 'package:flutter/material.dart';
import 'package:providers/SharedPreferences/shared_preferences.dart';

class LanguageClass extends ChangeNotifier {
  String currentLang = 'ar';

  Future<void> changeLanguage(String newLang) async {
    if (currentLang != newLang) {
      currentLang = newLang;
      notifyListeners();
      await ShApp().saveLanguage(charLanguage: newLang);
    }
  }

  Future<void> toggleLanguage() async {
    currentLang = currentLang == 'ar' ? 'en' : 'ar';
    notifyListeners();
    await ShApp().saveLanguage(charLanguage: currentLang);
  }
}
