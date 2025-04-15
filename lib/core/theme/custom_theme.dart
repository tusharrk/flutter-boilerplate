import 'package:flutter/material.dart';

abstract class CustomTheme {
  ThemeData get themeData;

  FloatingActionButtonThemeData get floatingActionButtonThemeData;
  AppBarTheme get appBarTheme;
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      const ElevatedButtonThemeData();
  TextButtonThemeData get textButtonThemeData => const TextButtonThemeData();
  CardThemeData get cardThemeData => const CardThemeData();
  TextTheme get textTheme => const TextTheme();
  IconThemeData get iconThemeData => const IconThemeData();
}
