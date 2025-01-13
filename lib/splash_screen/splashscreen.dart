import 'package:first/onboarding/onboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
     Get.to(OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Image.asset(
          'images/44c2c32767c9965e45c96465d62d9b2e.png', // Path to your image
          width: 200, // Adjust the width of the image
          height: 200, // Adjust the height of the image
          fit: BoxFit.contain, // Ensure the image fits within the specified dimensions
        ),
      ),
    );
  }
}