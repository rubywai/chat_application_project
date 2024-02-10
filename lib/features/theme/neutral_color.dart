import 'package:flutter/material.dart';

class MyNeutralColor extends ThemeExtension<MyNeutralColor>{
  final Color neutralLine;
  MyNeutralColor({required this.neutralLine});
  @override
  ThemeExtension<MyNeutralColor> copyWith(
  {
    Color? neutralLine,
}
      ) {
    return MyNeutralColor(neutralLine: neutralLine ?? this.neutralLine);
  }

  @override
  ThemeExtension<MyNeutralColor> lerp(covariant ThemeExtension<MyNeutralColor>? other, double t) {
    return MyNeutralColor(neutralLine: neutralLine);
  }

}