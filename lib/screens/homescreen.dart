import 'package:first/model/data.dart';
import 'package:first/screens/home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Index of the selected navigation bar item

  // List of screens corresponding to each navigation bar item
  final List<Widget> _screens = [
    ProfileScreen(), // Profile Screen (انا)
    FavoritesScreen(),
    HomeScreenContent(), // Favorites Screen (المفضلات)
    AddScreen(), // Add Screen (اضافه)
    OffersScreen(), // Offers Screen (العروض)
   // Home Screen (الرئيسيه)
  ];

  // Function to handle navigation bar item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("التطبيق"),
      ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected index
        onTap: _onItemTapped, // Handle item selection
        type: BottomNavigationBarType.fixed, // Fixed type for more than 3 items
        selectedItemColor: Colors.blue, // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'انا',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'العروض',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'الرئيسيه',

          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'اضافه',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'المفضلات',
          ),
        ],
      ),
    );
  }
}

// Example Screens for Each Navigation Bar Item

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "الصفحه الشخصيه (انا)",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "المفضلات",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "اضافه محتوى",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "العروض",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// class HomeScreenContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "الصفحه الرئيسيه",
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
