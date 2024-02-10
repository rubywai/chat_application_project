import 'package:flutter/material.dart';

class MyBrandColor extends ThemeExtension<MyBrandColor> {
  final Color brandBackground;
  final Color brandDefault;

  MyBrandColor({
    required this.brandBackground,
    required this.brandDefault,
  });

  @override
  ThemeExtension<MyBrandColor> copyWith({
    Color? brandBackground,
    Color? brandDefault,
  }) {
    return MyBrandColor(
      brandBackground: brandBackground ?? this.brandBackground,
      brandDefault: brandDefault ?? this.brandDefault,
    );
  }

  @override
  ThemeExtension<MyBrandColor> lerp(
      covariant ThemeExtension<MyBrandColor>? other, double t) {
    return MyBrandColor(
      brandBackground: brandBackground,
      brandDefault: brandDefault,
    );
  }
}
