import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../core/contexts/theme_context.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
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
