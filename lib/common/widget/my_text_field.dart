import 'package:flutter/material.dart';

import '../../features/theme/surface_color.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.hintText, this.controller,});
  final String hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onSurfaceVariant = theme.colorScheme.onSurfaceVariant;
    final surfaceExtension = theme.extension<MySurfaceColor>()!;
    return SizedBox(
      height: 36,
      child: TextField(
        controller: controller,
        style: theme.textTheme.bodyMedium
            ?.copyWith(color: onSurfaceVariant),
        decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: surfaceExtension.surfaceContainerHighest,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
