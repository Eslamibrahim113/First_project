class Machine2 {
  final String imagePath; // Path to the image asset
  final String name; // اسم الاله
  final double rate;
  final int number;
  final String type;
  final int width;
  final int nooma;
  bool isFavorite;

  // Constructor
  Machine2({
    required this.imagePath,
    required this.name,
    required this.rate,
    required this.number,
    required this.type,
    required this.width,
    required this.nooma,
    this.isFavorite = false,

  });
}

// List of machines
List<Machine2> machines2 = [
  Machine2(
    imagePath: 'images/alaat1.jpeg',
    name: 'انترلوك',
    rate: 1.36,
    number: 2500,
    type: 'دبل',
    width: 30,
    nooma: 28,
  ),
  Machine2(
    imagePath: 'images/alaat2.png',
    name: 'ميلتون فليس',
    rate: 3.35,
    number: 2,
    type: 'Type 2',
    width: 30,
    nooma: 25,
  ),
  Machine2(
    imagePath: 'images/alaat3.jpeg',
    name: 'بلوش',
    rate: 1.23,
    number: 3,
    type: 'Type 3',
    width: 30,
    nooma: 25,
  ),
  Machine2(
    imagePath: 'images/alaat2.png',
    name: 'ديب',
    rate: 2.23,
    number: 4,
    type: 'Type 4',
    width: 30,
    nooma: 25,
  ),
  Machine2(
    imagePath: 'images/alaat3.jpeg',
    name: 'انتر لوك',
    rate: 2.25,
    number: 5,
    type: 'Type 5',
    width: 30,
    nooma: 25,
  ),
  // Add more machines as needed
];