import 'package:flutter/material.dart';

class ThemeContext extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.dark;

  void switchTheme(bool isDark) {
    if (isDark) {
      _theme = ThemeMode.dark;
    } else {
      _theme = ThemeMode.light;
    }
    notifyListeners();
  }

  ThemeMode get theme => _theme;
}
