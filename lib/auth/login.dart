import 'package:first/auth/register.dart';
import 'package:first/screens/Home_sc2.dart';
import 'package:first/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image at the Top
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              height: 200, // Adjust the height as needed
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/44c2c32767c9965e45c96465d62d9b2e.png'), // Replace with your image path
                  fit: BoxFit.fill, // Cover the entire container
                ),
              ),
            ),
          ),
          SizedBox(height: 50),

          // Buttons at the Bottom
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), // Rounded corners for the container
                  border: Border.all(
                    color: Colors.black, // Black border for the container
                    width:1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Make the row take only the space it needs
                  children: [
                    // تسجيل دخول Button
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10), // Rounded corner on the left
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Colors.black, // Black border color
                          width: 1, // Border width
                        ),
                      ),
                      child: Container(
                        width: 120, // Adjust width as needed
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to Login Screen
                            Get.to(RegisterScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                            backgroundColor: Colors.blue, // Blue background
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10), // Rounded corner on the left
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            elevation: 0, // Remove button shadow
                          ),
                          child: Text(
                            "تسجيل دخول", // "Login" in Arabic
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black, // White text color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // انشاء حساب Button
                    Container(
                      width: 120, // Adjust width as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to Create Account Screen
                          Get.to(RegisterScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          backgroundColor: Colors.transparent, // Transparent background
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10), // Rounded corner on the right
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          elevation: 0, // Remove button shadow
                        ),
                        child: Text(
                          "انشاء حساب", // "Create Account" in Arabic
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black, // Black text color
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
    padding: const EdgeInsets.all(35.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // TextFormField for Username or Email
        TextFormField(
          decoration: InputDecoration(
            labelText: 'اسم المستخدم او البريد الالكتروني', // Label text
            hintText: 'ادخل اسم المستخدم او البريد الالكتروني', // Hint text
            suffixIcon: Icon(Icons.person), // Person icon
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            filled: true, // Enable background fill
            fillColor: Colors.grey[200], // Light grey background
          ),
          keyboardType: TextInputType.emailAddress, // Keyboard type for email
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يرجى ادخال اسم المستخدم او البريد الالكتروني'; // Validation message
            }
            return null;
          },
        ),
        SizedBox(height: 20), // Space between fields

        // TextFormField for Password
        TextFormField(
          obscureText: true, // Hide the password text
          decoration: InputDecoration(
            labelText: 'كلمه المرور', // Label text
            hintText: 'ادخل كلمه المرور', // Hint text
            suffixIcon: Icon(Icons.lock), // Lock icon at the end
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            filled: true, // Enable background fill
            fillColor: Colors.grey[200], // Light grey background
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يرجى ادخال كلمه السر'; // Validation message
            }
            return null;
          },
        ),
        SizedBox(height: 5),

        // Forgot Password Text
        GestureDetector(
          onTap: () {
            // Add navigation or action for forgot password
          },
          child: Padding(
            padding: const EdgeInsets.only(right:0.0),
            child: Text(
              " نسيت كلمه السر ؟",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
    ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 180, // Smaller width
                height: 40, // Smaller height
                child: ElevatedButton(
                  onPressed:(){
                    Get.to(HomeScreenContent());
                  }, // Navigate to Login Screen
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10), // Smaller padding
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
                    "تسجيل الدخول", // "Login" in Arabic
                    style: TextStyle(
                      fontSize: 16, // Smaller font size
                      color: Colors.white, // White text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(" او ",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 20
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
            children: [
              // Login with Google
              IconButton(
                onPressed: () {
                  // Add Google login functionality
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.transparent, // Transparent background
                  child: Image.asset(
                    'images/google.png', // Path to Google icon
                    width: 60, // Adjust size as needed
                    height: 60,
                  ),
                ),
              ),
              SizedBox(width: 20), // Space between buttons
              IconButton(
                onPressed: () {
                  // Add Twitter login functionality
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.transparent, // Transparent background
                  child: Image.asset(
                    'images/twiiter.png', // Path to Twitter icon
                    width: 60, // Adjust size as needed
                    height: 60,
                  ),
                ),
              ),
              // Login with Facebook
              SizedBox(width: 20), // Space between buttons

              IconButton(
                onPressed: () {
                  // Add Facebook login functionality
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.transparent, // Transparent background
                  child: Image.asset(
                    'images/facebook.jpeg', // Path to Facebook icon
                    width: 60, // Adjust size as needed
                    height: 60,
                  ),
                ),
              ),

              // Login with Twitter

            ],
          ),
          
          SizedBox(
            height: 50,
          ),
          
          Text("سياسه الخصوصيه وشروط الاحكام",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200,
            color: Colors.black
          ),)
        ],
      ),
    );
  }
}