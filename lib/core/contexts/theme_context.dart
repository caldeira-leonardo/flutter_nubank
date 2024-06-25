import 'dart:developer';

import 'package:flutter/material.dart';

class ThemeContext extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.dark;

  void switchTheme(bool isDark) {
    if (isDark) {
      log('entrou no Dark');
      _theme = ThemeMode.dark;
    } else {
      log('entrou no light');
      _theme = ThemeMode.light;
    }
    notifyListeners();
  }

  ThemeMode get theme => _theme;
}
