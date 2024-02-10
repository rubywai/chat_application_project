import 'package:chat_application_tuto/features/theme/brand_color.dart';
import 'package:chat_application_tuto/features/theme/neutral_color.dart';
import 'package:chat_application_tuto/features/theme/surface_color.dart';
import 'package:chat_application_tuto/features/theme/text_extension.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      surface: const Color(0xffFFFFFF),
      onSurface: const Color(0xff0F1828),
      onSurfaceVariant: const Color(0xffF7F7FC),
    
  ),
  extensions: [
    MySurfaceColor(surfaceContainerHighest: const Color(0xffF7F7FC),),
    MyBrandColor(brandDefault: const Color(0xff002DE3), brandBackground: const Color(0xffD2D5F9),),
    MyNeutralColor(neutralLine: const Color(0xffEDEDED)),
    MyTextExtension(),
  ],
  textTheme: _textTheme,
);

final darkTheme = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      surface: const Color(0xff0F1828),
      onSurface: const Color(0xffFFFFFF),
      onSurfaceVariant: const Color(0xffADB5BD),
    ),
  extensions: [
    MySurfaceColor(surfaceContainerHighest: const Color(0xff152033),),
    MyBrandColor(brandDefault: const Color(0xff375FFF), brandBackground: const Color(0xffD2D5F9),),
    MyNeutralColor(neutralLine: const Color(0xffF7F7FC)),
    MyTextExtension(),
  ],
  textTheme: _textTheme,
);

const _textTheme = TextTheme(
  //heading 1
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    bodyLarge: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,),
    bodyMedium: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,),

);