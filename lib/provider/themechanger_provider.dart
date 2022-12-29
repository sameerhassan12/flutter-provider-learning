import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _thememode = ThemeMode.light;

  ThemeMode get themeMode => _thememode;

  void setThememode(themeMode) {
    _thememode = themeMode;
    notifyListeners();
  }
}
