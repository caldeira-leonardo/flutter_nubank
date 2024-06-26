import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../core/contexts/theme_context.dart';

class ThemeSwitcherWidget extends StatefulWidget {
  const ThemeSwitcherWidget({super.key});

  @override
  State<ThemeSwitcherWidget> createState() => _ThemeSwitcherWidgetState();
}

class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  final themeContext = Modular.get<ThemeContext>();
  late bool isDark = false;
  @override
  void initState() {
    isDark = themeContext.theme == ThemeMode.dark;
    super.initState();
  }

  void handleToggleTheme(bool toDark) {
    themeContext.switchTheme(toDark);
    isDark = toDark;
    log(isDark.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: isDark,
      onToggle: (value) => handleToggleTheme(value),
    );
  }
}
