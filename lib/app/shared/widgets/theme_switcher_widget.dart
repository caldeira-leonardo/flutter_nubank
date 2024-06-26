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
    return Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(40),
          right: Radius.circular(40),
        ),
        border:
            Border.all(width: 1, color: Theme.of(context).colorScheme.primary),
      ),
      width: 70,
      child: FlutterSwitch(
        width: 70,
        value: isDark,
        inactiveIcon: Icon(
          Icons.light_mode,
          color: Theme.of(context).colorScheme.surface,
        ),
        activeIcon: Icon(
          Icons.dark_mode,
          color: Theme.of(context).colorScheme.secondary,
        ),
        activeToggleColor: Theme.of(context).colorScheme.primary,
        inactiveToggleColor: Theme.of(context).colorScheme.primary,
        activeColor: Theme.of(context).colorScheme.surface,
        inactiveColor: Theme.of(context).colorScheme.surface,
        onToggle: (value) => handleToggleTheme(value),
      ),
    );
  }
}
