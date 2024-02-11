import 'package:chat_application_tuto/common/const/routes.dart';
import 'package:chat_application_tuto/common/widget/action_button.dart';
import 'package:chat_application_tuto/common/widget/my_text_field.dart';
import 'package:chat_application_tuto/features/theme/surface_color.dart';
import 'package:chat_application_tuto/features/theme/text_extension.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final surfaceColor = theme.colorScheme.surface;
    final onSurfaceColor = theme.colorScheme.onSurface;
    final onSurfaceVariant = theme.colorScheme.onSurfaceVariant;
    final surfaceExtension = theme.extension<MySurfaceColor>()!;
    // final MyTextExtension myTextTheme = theme.extension<MyTextExtension>()!;
    return Scaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: surfaceColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your  Email',
                style: theme.textTheme.displayMedium?.copyWith(
                  color: onSurfaceColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Please enter your email to continue',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: onSurfaceColor,
                ),
              ),
              const SizedBox(height: 20,),
              const MyTextField(hintText: 'Enter your Email',),
              const SizedBox(
                height: 8,
              ),
              const MyTextField(hintText: 'Enter your Password',),
              const SizedBox(
                height: 8,
              ),
              ActionButton(text: 'Continue', onPressed: () {
                Navigator.pushNamed(context, Routes.optConfirm);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
