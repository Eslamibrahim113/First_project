import 'package:first/screens/Home_sc2.dart';
import 'package:first/screens/alaat_screen.dart';
import 'package:first/screens/homescreen.dart';
import 'package:flutter/material.dart';

class HomeScreenContent extends StatefulWidget {
  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  int _selectedIndex = 0; // 0 for first avatar, 1 for second avatar

  // List of avatar images and labels for the toggle bar
  final List<String> avatarImages = [
    'images/avatar1.jpeg', // First avatar
    'images/avatar2.jpeg', // Second avatar
  ];

  final List<String> avatarLabels = [
    'الخامات', // Label for first avatar
    'الالات', // Label for second avatar
  ];

  // List of screens to display
  final List<Widget> screens = [
    HomeScreen(), // First screen
    alaat_screen(), // Second screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Toggle Bar with Two Circular Avatars
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 100, // Increased height to accommodate the black line
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First Avatar
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0; // Select first avatar
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Circular Avatar
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(avatarImages[0]),
                        backgroundColor: _selectedIndex == 0
                            ? Colors.blue.withOpacity(0.3)
                            : Colors.transparent,
                      ),

                      SizedBox(height: 6), // Space between line and text
                      // Avatar Label
                      Text(
                        avatarLabels[0],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8), // Increased space between image and text
                      // Black line under selected avatar
                      if (_selectedIndex == 0)
                        Container(
                          height: 2,
                          width: 40,
                          color: Colors.black,
                        ),
                    ],
                  ),
                ),
                // Second Avatar
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1; // Select second avatar
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Circular Avatar
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(avatarImages[1]),
                        backgroundColor: _selectedIndex == 1
                            ? Colors.blue.withOpacity(0.3)
                            : Colors.transparent,
                      ),

                      SizedBox(height: 4), // Space between line and text
                      // Avatar Label
                      Text(
                        avatarLabels[1],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4), // Increased space between image and text
                      // Black line under selected avatar
                      if (_selectedIndex == 1)
                        Container(
                          height: 2,
                          width: 40,
                          color: Colors.black,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8), // Space between toggle bar and screen
          // Display Selected Screen
          Expanded(
            child: IndexedStack(
              index: _selectedIndex, // Controls which screen is displayed
              children: screens,
            ),
          ),
        ],
      ),
    );
  }
}

// HomeScreen (First Screen)
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.home, size: 64, color: Colors.blue),
//           SizedBox(height: 16),
//           Text(
//             'Welcome to the Home Screen!',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Screen2 (Second Screen)
