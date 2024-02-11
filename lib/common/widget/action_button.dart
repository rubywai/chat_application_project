import 'package:chat_application_tuto/features/theme/brand_color.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ActionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    MyBrandColor brandColor = Theme.of(context).extension<MyBrandColor>()!;
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: brandColor.brandDefault,
        foregroundColor: brandColor.buttonText,
        minimumSize: const Size(327, 52),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        )
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
