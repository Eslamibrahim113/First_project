import 'package:first/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  final String _imagePath = "images/44c2c32767c9965e45c96465d62d9b2e.png";

  void _goToLogin() {
    Get.to(LoginScreen()); // Navigate to Login Screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Centered Image
          Center(
            child: Image.asset(
              _imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),

          // Continue Button at the Bottom
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: _goToLogin, // Navigate to Login Screen
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    backgroundColor: Colors.blue, // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                      side: BorderSide(
                        color: Colors.black, // Black border color
                        width: 2, // Border width
                      ),
                    ),
                  ),
                  child: Text(
                    "استمر", // "Continue" in Arabic
                    style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}