import 'package:chat_application_tuto/common/widget/action_button.dart';
import 'package:chat_application_tuto/features/theme/surface_color.dart';
import 'package:chat_application_tuto/features/theme/text_extension.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    MySurfaceColor surfaceColor =
        Theme.of(context).extension<MySurfaceColor>()!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 280.33,
                  height: 270,
                  child: Image.asset('assets/icons/chat_person.png'),
                ),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 280,
                  child: Text(
                    'Connect easily with your family and friends over countries',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: colorScheme.onSurface),
                  ),
                ),
               Column(
                 children: [
                   Text(
                     'Terms & Privacy Policy',
                     style: theme.textTheme.bodyLarge?.copyWith(
                       color: colorScheme.onSurface,
                     ),
                   ),
                   const SizedBox(height: 40,),
                   ActionButton(
                     text: 'Start Messaging',
                     onPressed: () {

                     },
                   ),
                 ],
               )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
