import 'package:chat_application_tuto/common/const/routes.dart';
import 'package:chat_application_tuto/features/auth/otpconfirm/ui/screen/otp_confirm_screen.dart';
import 'package:chat_application_tuto/features/auth/signup/ui/screen/sign_up_screen.dart';
import 'package:chat_application_tuto/features/profile/ui/screen/profile_screen.dart';
import 'package:chat_application_tuto/features/splash/ui/screen/splash_screen.dart';
import 'package:chat_application_tuto/features/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        Routes.signUp : (_) => const SignUpScreen(),
        Routes.optConfirm : (_) => const OTPConfirmScreen(),
        Routes.profile : (_) => const ProfileScreen(),
      },
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}



