import 'package:flutter/material.dart';

class MySurfaceColor extends ThemeExtension<MySurfaceColor>{
  final Color surfaceContainerHighest;
  MySurfaceColor({required this.surfaceContainerHighest});
  @override
  ThemeExtension<MySurfaceColor> copyWith(
  {
    Color? surfaceContainerHighest,
}
      ) {
  return MySurfaceColor(surfaceContainerHighest: surfaceContainerHighest ?? this.surfaceContainerHighest);
  }

  @override
  ThemeExtension<MySurfaceColor> lerp(covariant ThemeExtension<MySurfaceColor>? other, double t) {
   return MySurfaceColor(surfaceContainerHighest: surfaceContainerHighest);
  }



}