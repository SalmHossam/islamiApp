import 'package:flutter/material.dart';

class FirstProvider extends ChangeNotifier{
  String LanguageCode="en";
  ThemeMode modeApp=ThemeMode.light;
  void changeLanguage(String langCode){
          LanguageCode=langCode;
          notifyListeners();
  }
  changeTheme(ThemeMode mode){
    modeApp=mode;
    notifyListeners();

  }

}