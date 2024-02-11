import 'package:flutter/material.dart';

class MyBrandColor extends ThemeExtension<MyBrandColor> {
  final Color brandBackground;
  final Color brandDefault;
  final Color buttonText;

  MyBrandColor({
    required this.brandBackground,
    required this.brandDefault,
    required this.buttonText,
  });

  @override
  ThemeExtension<MyBrandColor> copyWith({
    Color? brandBackground,
    Color? brandDefault,
    Color? buttonText,
  }) {
    return MyBrandColor(
      brandBackground: brandBackground ?? this.brandBackground,
      brandDefault: brandDefault ?? this.brandDefault,
      buttonText:  buttonText ?? this.buttonText,
    );
  }

  @override
  ThemeExtension<MyBrandColor> lerp(
      covariant ThemeExtension<MyBrandColor>? other, double t) {
    return MyBrandColor(
      brandBackground: brandBackground,
      brandDefault: brandDefault,
      buttonText:  buttonText,
    );
  }
}
