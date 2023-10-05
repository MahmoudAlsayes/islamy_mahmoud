import 'package:flutter/material.dart';

import '../prefs_helper.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";

  void init() async {
    String? newlang = PrefsHelper.getLanguage();
    changeLanguage(newlang ?? "en");
    String mode = PrefsHelper.getMode();
    if (mode == "dark") {
      changeTheme(ThemeMode.dark);
    } else {
      changeTheme(ThemeMode.light);
    }
  }

  ThemeMode modeApp = ThemeMode.light;

  void changeLanguage(String langCode) {
    //   if (languageCode=="en"){
    //     languageCode="ar";
    //   }else{
    //     languageCode="en";

    //
    //
    //   }
    languageCode = langCode;
    PrefsHelper.saveLanguage(langCode);
    notifyListeners();
  }

  changeTheme(ThemeMode mode) {
    modeApp = mode;
    if (mode == ThemeMode.dark) {
      PrefsHelper.saveTheme("dark");
    } else {
      PrefsHelper.saveTheme("light");
    }
    notifyListeners();
  }

  String getBackGround() {
    if (modeApp == ThemeMode.light) {
      return "assets/images/background.png";
    } else {
      return "assets/images/background_dark.png";
    }
  }
}
