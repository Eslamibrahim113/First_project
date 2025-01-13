import 'package:first/auth/register.dart';
import 'package:first/model/data.dart';
import 'package:first/screens/details2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailsScreen1 extends StatelessWidget {
  final String imageUrl;
  final String modelName;
  final String type;
  final String quantity;
  final String height;


  DetailsScreen1({
    required this.imageUrl,
    required this.modelName,
    required this.type,
    required this.quantity, required this.height,
  });

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.share, size: 25, color: Colors.black),
                        GestureDetector(
                          onTap: () {
                        Get.to(DetailsScreen2(imageUrl:imageUrl, modelName: modelName, type: type, quantity: quantity, height: height,));
                          },
                          child: Icon(Icons.arrow_circle_right, size: 25, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    // Image Container
                    Container(
                      height: 153,
                      width: 268,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Positioned(
                      bottom: 40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          height: 33,
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Make the row take only the space it needs
                            children: [
                              Container(
                                width: 215,
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    // Transparent background
                                    backgroundColor: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                    ),
                                    elevation: 0, // Remove button shadow
                                  ),
                                  child: Text(
                                    modelName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black, // Black text color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              // Vertical Divider
                              VerticalDivider(
                                color: Colors.black, // Divider color
                                thickness: 1, // Divider thickness
                                width: 1, // Divider width
                              ),

                              // انشاء حساب Button
                              Container(
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    // Transparent background
                                    backgroundColor: Colors.grey.shade400,
                                    shape: RoundedRectangleBorder(
                                    ),
                                    elevation: 0, // Remove button shadow
                                  ),
                                  child: Text(
                                    "اسم الخامه", // "Create Account" in Arabic
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white, // Black text color
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
                    SizedBox(
                      height: 5,
                    ),
                    Positioned(
                      bottom: 40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          height: 33,
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Make the row take only the space it needs
                            children: [
                              Container(
                                width: 215,
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    // Transparent background
                                    backgroundColor: Colors.grey.shade400,
                                    shape: RoundedRectangleBorder(
                                    ),
                                    elevation: 0, // Remove button shadow
                                  ),
                                  child: Text(
                                    type,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black, // Black text color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              // Vertical Divider
                              VerticalDivider(
                                color: Colors.black, // Divider color
                                thickness: 1, // Divider thickness
                                width: 1, // Divider width
                              ),

                              // انشاء حساب Button
                              Container(
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                     // Transparent background
                                    backgroundColor: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                    ),
                                    elevation: 0, // Remove button shadow
                                  ),
                                  child: Text(
                                    "نوع الغزل", // "Create Account" in Arabic
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white, // Black text color
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

                    // Model Name Row
                    // Center(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center, // Center the row's children horizontally
                    //     children: [
                    //       // Model Name Value Container
                    //       Container(
                    //
                    //         decoration: BoxDecoration(
                    //           color: Colors.blue[100],
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //         child: Text(
                    //           modelName,
                    //           style: const TextStyle(
                    //             fontSize: 16,
                    //             color: Colors.black,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //       const SizedBox(width: 10), // Add spacing between containers
                    //       // Model Name Label Container
                    //       Container(
                    //        width: 87,
                    //         height: 22,
                    //         decoration: BoxDecoration(
                    //           color: Colors.grey[300],
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //         child: const Text(
                    //           ": اسم الموديل",
                    //           style: TextStyle(
                    //             fontSize: 16,
                    //             color: Colors.black,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 8), // Add spacing between rows

// Type Row
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center, // Center the row's children horizontally
//                         children: [
//                           // Type Value Container
//                           Container(
//                             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                             decoration: BoxDecoration(
//                               color: Colors.blue[100],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Text(
//                               type,
//                               style: const TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 10), // Add spacing between containers
//                           // Type Label Container
//                           Container(
//                             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[300],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: const Text(
//                               ":نوع الغزل",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
                     const SizedBox(height: 50),

                    // Stats Row
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Rating Container
                          _buildStatContainer(
                            icon: Icons.star,
                            iconColor: Colors.amber,
                            text: '4.5',
                          ),
                          // Likes Container
                          _buildStatContainer(
                            icon: Icons.favorite,
                            iconColor: Colors.red,
                            text: '225',
                          ),
                          // Alerts Container
                          _buildStatContainer(
                            icon: Icons.add_alert,
                            iconColor: Colors.grey,
                            text: '8',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),

                    // Booking Button
                    Positioned(
                      bottom: 40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add booking logic here
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                              " حجز   ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
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