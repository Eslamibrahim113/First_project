import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
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
                            Get.toNamed('/login');
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
                          Get.toNamed('/create_account');
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
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // TextFormField for Username or Email
    Row(
    children: [
    // First Name Field

    SizedBox(width: 10), // Space between fields

    // Last Name Field
    Expanded(
    child: TextFormField(
    decoration: InputDecoration(
    labelText: 'اسم العائله', // Label text
    hintText: 'ادخل اسم العائله', // Hint text
      prefixIcon: Icon(Icons.person),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10), // Rounded corners
    ),
    filled: true, // Enable background fill
    fillColor: Colors.grey[200], // Light grey background
    ),
    ),
    ),
      SizedBox(width: 10),
      Expanded(
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'الاسم الاول', // Label text
            hintText: 'ادخل الاسم الاول', // Hint text
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            filled: true, // Enable background fill
            fillColor: Colors.grey[200], // Light grey background
          ),
        ),
      ),
    ],
    ),
    SizedBox(height: 20), // Space between rows

    // Password Field
    TextFormField(
    obscureText: true, // Hide the password text
    decoration: InputDecoration(
    labelText: 'كلمه المرور', // Label text
    hintText: 'ادخل كلمه المرور', // Hint text
    suffixIcon: Icon(Icons.lock), // Lock icon
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10), // Rounded corners
    ),
    filled: true, // Enable background fill
    fillColor: Colors.grey[200], // Light grey background
    ),
    ),
    SizedBox(height: 20), // Space between fields

    // Confirm Password Field
    TextFormField(
    obscureText: true, // Hide the password text
    decoration: InputDecoration(
    labelText: 'تاكيد كلمه المرور', // Label text
    hintText: 'اعد ادخال كلمه المرور', // Hint text
    suffixIcon: Icon(Icons.lock), // Lock icon
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10), // Rounded corners
    ),
    filled: true, // Enable background fill
    fillColor: Colors.grey[200], // Light grey background
    ),
    ),
    SizedBox(height: 20), // Space before the button
    ]
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
                  onPressed:(){}, // Navigate to Login Screen
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
                    "  تسجيل   ", // "Login" in Arabic
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


