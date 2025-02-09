import 'package:first/model/alaat_data.dart';
import 'package:first/screens/alaat_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class alaat_screen extends StatefulWidget {
  const alaat_screen({super.key});

  @override
  State<alaat_screen> createState() => _alaatState();
}

class _alaatState extends State<alaat_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: machines2.length, // Use the correct list name
        itemBuilder: (context, index) {
          final machine = machines2[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: GestureDetector(
              onTap: () {
                Get.to(AlaatDetails(machine: machine));
              },
              child: Container(
                height: 140,
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
                        width: 100, // Adjusted width
                        height: 100, // Adjusted height
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    // Column on the right
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'اسم الاله : ${machine.name}', // Use name from the model
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          // "حجز" Button

                          SizedBox(height: 40),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.black),
                              SizedBox(width: 5),
                              Text("${machine.rate}"), // Use rate from the model
                              Spacer(), // Pushes the favorite icon to the end
                              GestureDetector(
                                onTap: () {
                                  // Toggle favorite state
                                  setState(() {
                                    machine.isFavorite = !machine.isFavorite;
                                  });
                                },
                                child: Icon(
                                  machine.isFavorite
                                      ? Icons.favorite // Filled favorite icon
                                      : Icons.favorite_border_outlined, // Outlined favorite icon
                                  color: machine.isFavorite
                                      ? Colors.red // Red color when favorited
                                      : Colors.black, // Black color when not favorited
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}