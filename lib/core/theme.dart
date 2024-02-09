import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.transparent,
    surface: const Color(0xffFFFFFF),
    onSurface: Color(0xff0F1828),
  ));
}
