import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/theme/custom_color_scheme.dart';
import 'package:flutter_boilerplate/core/theme/custom_theme.dart';

/// Custom light theme for project design
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        appBarTheme: appBarTheme,
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
  @override
  AppBarTheme get appBarTheme => const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );

  @override
  CardThemeData get cardThemeData => const CardThemeData();

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      const ElevatedButtonThemeData();

  @override
  IconThemeData get iconThemeData => const IconThemeData();

  @override
  TextButtonThemeData get textButtonThemeData => const TextButtonThemeData();

  @override
  TextTheme get textTheme => const TextTheme();
}
