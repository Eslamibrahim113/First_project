import 'package:first/model/data.dart';
import 'package:first/screens/detail_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class HomeScreenContent extends StatefulWidget {
  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  // Track favorite states for each item
  final List<bool> isFavorite = List.generate(items.length, (_) => false);
  final item = items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(8), // Reduced padding
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 8, // Space between columns
          mainAxisSpacing: 8, // Space between rows
          childAspectRatio: 0.99, // Smaller aspect ratio for smaller cards
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Get.to(DetailsScreen1(
                imageUrl: item.imageUrl,
                modelName: item.modelName,
                type: item.type,
                quantity: item.height,
                height: item.quantity,));
            },
            child: Card(
              elevation: 2, // Smaller elevation for a flatter card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    8), // Slightly smaller corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // Reduced padding inside the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    Container(
                      height: 90, // Reduced height for the image
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(item.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Reduced space between image and text
                    // Model Name
                    Center(
                      child: Text(
                        "اسم الموديل:${item.modelName}",
                        style: const TextStyle(
                          fontSize: 15, // Smaller font size for the model name
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign
                            .center, // Center-align the text within the Text widget
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Reduced space between text and rating row
                    // Rating and Favorite Icon Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Rating
                        Row(
                          children: [
                            const Icon(
                                Icons.star, color: Colors.amber, size: 16),
                            // Smaller icon size
                            const SizedBox(width: 4),
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(
                                  fontSize: 12), // Smaller font size
                            ),
                          ],
                        ),
                        // Favorite Icon
                        IconButton(
                          icon: Icon(
                            isFavorite[index]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavorite[index] ? Colors.red : Colors.grey,
                            size: 18, // Smaller favorite icon
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite[index] =
                              !isFavorite[index]; // Toggle favorite state
                            });
                          },
                        ),
                      ],
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
