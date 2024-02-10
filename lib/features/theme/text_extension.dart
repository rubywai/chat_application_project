import 'package:flutter/material.dart';

class MyTextExtension extends ThemeExtension<MyTextExtension> {
  final TextStyle subHeading1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  final TextStyle subHeading2 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  final TextStyle metaData1 = const TextStyle(
    fontSize: 12,
  );
  final TextStyle metaData2 = const TextStyle(
    fontSize: 10,
  );
  final TextStyle metaData3 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  @override
  ThemeExtension<MyTextExtension> copyWith() {
    return MyTextExtension();
  }

  @override
  ThemeExtension<MyTextExtension> lerp(
      covariant ThemeExtension<MyTextExtension>? other, double t) {
    return MyTextExtension();
  }
}
