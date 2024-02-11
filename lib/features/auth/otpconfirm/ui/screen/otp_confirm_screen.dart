import 'package:chat_application_tuto/common/const/routes.dart';
import 'package:chat_application_tuto/features/theme/brand_color.dart';
import 'package:chat_application_tuto/features/theme/surface_color.dart';
import 'package:flutter/material.dart';

class OTPConfirmScreen extends StatefulWidget {
  const OTPConfirmScreen({super.key});

  @override
  State<OTPConfirmScreen> createState() => _OTPConfirmScreenState();
}

class _OTPConfirmScreenState extends State<OTPConfirmScreen> {
  final List<FocusNode> _focusList = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 6; i++) {
      _focusList.add(FocusNode());
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final surfaceColor = theme.colorScheme.surface;
    final onSurfaceColor = theme.colorScheme.onSurface;
    final onSurfaceVariant = theme.colorScheme.onSurfaceVariant;
    final surfaceExtension = theme.extension<MySurfaceColor>()!;
    final brandExtension = theme.extension<MyBrandColor>()!;
    return Scaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: surfaceColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Enter Code',
                  style: theme.textTheme.displayMedium?.copyWith(
                    color: onSurfaceColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'We have sent you an OTP with the code to waiphyo@mail.com',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: onSurfaceColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Column(
              children: [
                _optRow(
                  textColor: onSurfaceVariant,
                  filledColor: surfaceExtension.surfaceContainerHighest,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: brandExtension.brandDefault),
                  onPressed: () {},
                  child: const Text('Resend Code'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _optRow({
    required Color textColor,
    required Color filledColor,
  }) {
    final style = Theme.of(context).textTheme.bodyLarge;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 6; i++)
          SizedBox(
            width: 50,
            height: 36,
            child: TextField(
              keyboardType: TextInputType.number,
              focusNode: _focusList[i],
              textAlign: TextAlign.center,
              style: style?.copyWith(color: textColor),
              onChanged: (str) {
                if (str.length == 1) {
                  if (i < 5) {
                    _focusList[i + 1].requestFocus();
                  } else {
                    Navigator.pushNamed(context, Routes.profile);
                  }
                }
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                filled: true,
                fillColor: filledColor,
              ),
            ),
          ),
      ],
    );
  }
  @override
  void dispose() {
    super.dispose();
    for(int i=0;i<_focusList.length;i++){
      _focusList[i].dispose();
    }
  }
}
