import 'package:flutter/material.dart';

class FirstProvider extends ChangeNotifier{
  String LanguageCode="en";
  void changeLanguage(String langCode){
          LanguageCode=langCode;
          notifyListeners();

  }

}