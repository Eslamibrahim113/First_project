import 'package:first/model/machine_data.dart'; // Import your model
import 'package:flutter/material.dart';

class alaat extends StatefulWidget {
  const alaat({super.key});

  @override
  State<alaat> createState() => _alaatState();
}

class _alaatState extends State<alaat> {
  int _currentIndex = 0; // For BottomNavigationBar

  // BottomNavigationBar items
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'انا',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'الرئيسيه',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('قائمة الآلات'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: machines.length, // Ensure `machines` is defined in your model
        itemBuilder: (context, index) {
          final machine = machines[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image on the left
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      machine.imagePath, // Use imagePath from the model
                      width: 140,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  // Column on the right
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'اسم الاله : ${machine.name}', // Use name from the model
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              "حجز",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    SizedBox(width: 8),
                                    Text("${machine.rate}"), // Use rate from the model
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(Icons.favorite_border_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // Add navigation logic here if needed
        },
        items: bottomNavItems,
      ),
    );
  }
}