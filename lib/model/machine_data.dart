class Machine {
  final String imagePath; // Path to the image asset
  final String name; // اسم الاله
  final double rate; // Rating of the machine

  // Constructor
  Machine({
    required this.imagePath,
    required this.name,
    required this.rate,
  });
}
List<Machine> machines = [
  Machine(
    imagePath: 'images/alaat1.jpeg',
    name: 'فرو ',
    rate: 3.25,
  ),
  Machine(
    imagePath: 'images/alaat2.png',
    name: 'سنجل',
    rate: 1.25,
  ),
  Machine(
    imagePath: 'images/alaat3.jpeg',
    name: ' انتر لوك',
    rate: 2.25,
  ),
  Machine(
    imagePath: 'images/alaat2.png',
    name: 'سنجل',
    rate: 1.25,
  ),
  Machine(
    imagePath: 'images/alaat3.jpeg',
    name: ' انتر لوك',
    rate: 2.25,
  ),
  // Add more machines as needed
];