import 'package:flutter/material.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff81269D),
      surfaceTint: Color(0xff8b1cd7),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9a32e6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff81269D),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffffff),
      onSecondaryContainer: Color(0xff575859),
      tertiary: Color(0xff81269D),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffffff),
      onTertiaryContainer: Color(0xff575859),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff7fd),
      onSurface: Color(0xff1f1923),
      onSurfaceVariant: Color(0xff4e4354),
      outline: Color(0xff7f7385),
      outlineVariant: Color(0xffd0c1d6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e39),
      inversePrimary: Color(0xffe1b6ff),
      primaryFixed: Color(0xfff2daff),
      onPrimaryFixed: Color(0xff2e004e),
      primaryFixedDim: Color(0xffe1b6ff),
      onPrimaryFixedVariant: Color(0xff6c00ad),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff1a1c1c),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff454747),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff1a1c1c),
      tertiaryFixedDim: Color(0xffc6c6c7),
      onTertiaryFixedVariant: Color(0xff454747),
      surfaceDim: Color(0xffe2d6e5),
      surfaceBright: Color(0xfffff7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0fe),
      surfaceContainer: Color(0xfff6eaf9),
      surfaceContainerHigh: Color(0xfff1e4f3),
      surfaceContainerHighest: Color(0xffebdfed),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6700a5),
      surfaceTint: Color(0xff8b1cd7),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9a32e6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff414343),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff737575),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff414343),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff737575),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fd),
      onSurface: Color(0xff1f1923),
      onSurfaceVariant: Color(0xff493f50),
      outline: Color(0xff675b6d),
      outlineVariant: Color(0xff837689),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e39),
      inversePrimary: Color(0xffe1b6ff),
      primaryFixed: Color(0xffa43ef0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8916d5),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff737575),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5a5c5c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff737575),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5a5c5c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe2d6e5),
      surfaceBright: Color(0xfffff7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0fe),
      surfaceContainer: Color(0xfff6eaf9),
      surfaceContainerHigh: Color(0xfff1e4f3),
      surfaceContainerHighest: Color(0xffebdfed),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff38005c),
      surfaceTint: Color(0xff8b1cd7),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6700a5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff202323),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff414343),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff202323),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff414343),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fd),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2a2030),
      outline: Color(0xff493f50),
      outlineVariant: Color(0xff493f50),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e39),
      inversePrimary: Color(0xfff8e6ff),
      primaryFixed: Color(0xff6700a5),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff470074),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff414343),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2b2d2d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff414343),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2b2d2d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe2d6e5),
      surfaceBright: Color(0xfffff7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0fe),
      surfaceContainer: Color(0xfff6eaf9),
      surfaceContainerHigh: Color(0xfff1e4f3),
      surfaceContainerHighest: Color(0xffebdfed),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff591E8C),
      surfaceTint: Color(0xffe1b6ff),
      onPrimary: Color(0xff4c007c),
      primaryContainer: Color(0xff8100cd),
      onPrimaryContainer: Color(0xfffff6fe),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff2f3131),
      secondaryContainer: Color(0xffd4d4d4),
      onSecondaryContainer: Color(0xff3e4040),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f3131),
      tertiaryContainer: Color(0xffd4d4d4),
      onTertiaryContainer: Color(0xff3e4040),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff17111b),
      onSurface: Color(0xffebdfed),
      onSurfaceVariant: Color(0xffd0c1d6),
      outline: Color(0xff998ca0),
      outlineVariant: Color(0xff4e4354),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffebdfed),
      inversePrimary: Color(0xff8b1cd7),
      primaryFixed: Color(0xfff2daff),
      onPrimaryFixed: Color(0xff2e004e),
      primaryFixedDim: Color(0xffe1b6ff),
      onPrimaryFixedVariant: Color(0xff6c00ad),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff1a1c1c),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff454747),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff1a1c1c),
      tertiaryFixedDim: Color(0xffc6c6c7),
      onTertiaryFixedVariant: Color(0xff454747),
      surfaceDim: Color(0xff17111b),
      surfaceBright: Color(0xff3e3742),
      surfaceContainerLowest: Color(0xff120c16),
      surfaceContainerLow: Color(0xff1f1923),
      surfaceContainer: Color(0xff241d28),
      surfaceContainerHigh: Color(0xff2e2832),
      surfaceContainerHighest: Color(0xff39323d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe4bcff),
      surfaceTint: Color(0xffe1b6ff),
      onPrimary: Color(0xff260042),
      primaryContainer: Color(0xffbd69ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff2f3131),
      secondaryContainer: Color(0xffd4d4d4),
      onSecondaryContainer: Color(0xff1e2020),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f3131),
      tertiaryContainer: Color(0xffd4d4d4),
      onTertiaryContainer: Color(0xff1e2020),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff17111b),
      onSurface: Color(0xfffff9fb),
      onSurfaceVariant: Color(0xffd5c6db),
      outline: Color(0xffac9eb2),
      outlineVariant: Color(0xff8c7f92),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffebdfed),
      inversePrimary: Color(0xff6e00b0),
      primaryFixed: Color(0xfff2daff),
      onPrimaryFixed: Color(0xff1f0037),
      primaryFixedDim: Color(0xffe1b6ff),
      onPrimaryFixedVariant: Color(0xff540089),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff0f1112),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff343637),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff0f1112),
      tertiaryFixedDim: Color(0xffc6c6c7),
      onTertiaryFixedVariant: Color(0xff343637),
      surfaceDim: Color(0xff17111b),
      surfaceBright: Color(0xff3e3742),
      surfaceContainerLowest: Color(0xff120c16),
      surfaceContainerLow: Color(0xff1f1923),
      surfaceContainer: Color(0xff241d28),
      surfaceContainerHigh: Color(0xff2e2832),
      surfaceContainerHighest: Color(0xff39323d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9fb),
      surfaceTint: Color(0xffe1b6ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe4bcff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd4d4d4),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd4d4d4),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff17111b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9fb),
      outline: Color(0xffd5c6db),
      outlineVariant: Color(0xffd5c6db),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffebdfed),
      inversePrimary: Color(0xff43006e),
      primaryFixed: Color(0xfff5e0ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe4bcff),
      onPrimaryFixedVariant: Color(0xff260042),
      secondaryFixed: Color(0xffe6e7e7),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcacbcb),
      onSecondaryFixedVariant: Color(0xff141717),
      tertiaryFixed: Color(0xffe6e7e7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffcacbcb),
      onTertiaryFixedVariant: Color(0xff141717),
      surfaceDim: Color(0xff17111b),
      surfaceBright: Color(0xff3e3742),
      surfaceContainerLowest: Color(0xff120c16),
      surfaceContainerLow: Color(0xff1f1923),
      surfaceContainer: Color(0xff241d28),
      surfaceContainerHigh: Color(0xff2e2832),
      surfaceContainerHighest: Color(0xff39323d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
