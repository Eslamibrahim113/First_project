import 'package:first/auth/login.dart';
import 'package:first/main.dart';
import 'package:first/onboarding/onboard.dart';
import 'package:first/splash_screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        // '/home': (context) => const HomeScreen(),
     'onboarding': (context) =>  OnboardingScreen(),
        ' SplashScreen': (context) =>   SplashScreen(),
        ' LoginScreen': (context) =>   LoginScreen(),

      },
    );
  }
}

