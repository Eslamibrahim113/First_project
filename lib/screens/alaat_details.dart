import 'package:first/auth/register.dart';
import 'package:first/model/alaat_data.dart';
import 'package:first/model/data.dart';
import 'package:first/screens/details2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AlaatDetails extends StatelessWidget {
  final Machine2 machine; // Accept a Machine2 object

  // Constructor
  AlaatDetails({required this.machine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''), // Empty title
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    // Top Row with Icons
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Icon(Icons.share, size: 25, color: Colors.black),
                    //     GestureDetector(
                    //       onTap: () {
                    //         // Add navigation logic here
                    //       },
                    //       child: Icon(Icons.arrow_circle_right, size: 25, color: Colors.black),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 50),

                    // Image Container
                    Container(
                      height: 200,
                      width: 276,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.blueGrey, // Black border color
                          width: 2.0, // Border thickness
                        ),
                        image: DecorationImage(
                          image: AssetImage(machine.imagePath), // Use imagePath from the machine
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),

                    // Model Name and Type Row
                    Container(
                      height: 33,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Model Name Button
                          Container(
                            width: 215,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                machine.type, // Use name from the machine
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          // Vertical Divider
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 1,
                          ),

                          // اسم الخامه Button
                          Container(
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                "النوع",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),

                    Container(
                      height: 33,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Type Button
                          Container(
                            width: 215,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                "${machine.number}", // Use type from the machine
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          // Vertical Divider
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 1,
                          ),

                          // نوع الغزل Button
                          Container(
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                "عدد الابر",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 33,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Model Name Button
                          Container(
                            width: 215,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                               "${machine.nooma}", // Use name from the machine
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          // Vertical Divider
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 1,
                          ),

                          // اسم الخامه Button
                          Container(
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                "النعومه",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 33,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Type Button
                          Container(
                            width: 215,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                "${machine.width}", // Use type from the machine
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          // Vertical Divider
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 1,
                          ),

                          // نوع الغزل Button
                          Container(
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                "العرض",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    SizedBox(height: 5,),
                    const SizedBox(height: 50),

                    // Stats Row
                    // Padding(
                    //   padding: const EdgeInsets.all(10),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       // Rating Container
                    //       _buildStatContainer(
                    //         icon: Icons.star,
                    //         iconColor: Colors.amber,
                    //         text: machine.rate.toString(), // Use rate from the machine
                    //       ),
                    //       // Likes Container
                    //       _buildStatContainer(
                    //         icon: Icons.favorite,
                    //         iconColor: Colors.red,
                    //         text: '225',
                    //       ),
                    //       // Alerts Container
                    //       _buildStatContainer(
                    //         icon: Icons.add_alert,
                    //         iconColor: Colors.grey,
                    //         text: '8',
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 120),

                    // Booking Button
                    Center(
                      child: Container(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add booking logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                          ),
                          child: const Text(
                            "حجز",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build stat containers
  Widget _buildStatContainer({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Container(
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
