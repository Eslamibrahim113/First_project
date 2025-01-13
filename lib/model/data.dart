import 'package:flutter/material.dart';

class Data {
  final String imageUrl;
  final String modelName;
  final double rating;
  final String materialName;
  final String quantity;
  final String height;
  final String type;

  Data({
    required this.imageUrl,
    required this.modelName,
    required this.rating,
    required this.materialName,
    required this.quantity,
    required this.height,
    required this.type,
  });
}

// Example Data
final List<Data> items = [
  Data(
    imageUrl: "images/2bcf0a99bada3b8ee28ca05c2e065443.png",
    modelName: " دربي ",
    rating: 4.5,
    materialName: "Cotton",
    quantity: " كجم 3000 ",
    height: "سم 1.2 ",
    type: "قطن",
  ),
  Data(
    imageUrl: "images/5d7f4385d3329feb15a7e0e2f845892e.png",
    modelName: " ريب  ",
    rating: 3.8,
    materialName: "Polyester",
    quantity: "كجم 3000",
    height: "1.5 سم",
    type: "قطن",
  ),
  Data(
    imageUrl: "images/220bad0c02512904d21cc6e9d792099a.png",
    modelName: "برسولا  ",
    rating: 3.8,
    materialName: "Polyester",
    quantity: "كجم 2500",
    height: "5 سم",
    type: "قطن",
  ),
  Data(
    imageUrl: "images/b689c65a09d3dba3d169c1d7570339f5.jpeg",
    modelName: " ميلتون ",
    rating: 3.8,
    materialName: "Polyester",
    quantity: "كجم 4100",
    height: " سم 15 ",
    type: "قطن",
  ),
  // Add more items as needed
];

