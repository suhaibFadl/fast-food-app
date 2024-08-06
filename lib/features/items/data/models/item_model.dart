import 'package:fast_food/features/items/data/models/category_model.dart';

class Item {
  final String name;
  final String imagePath;
  final String description;
  final int price;
  final Category category;

  Item({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.category,
  });
}

List<Item> items = [
  Item(
    name: 'Classic',
    imagePath: 'assets/items/classic-burger.png',
    description: 'description',
    price: 10,
    category: categories[0],
  ),
  Item(
    name: 'Margaritta',
    imagePath: 'assets/items/margarita-pizza.webp',
    description: 'description',
    price: 10,
    category: categories[1],
  ),
  Item(
    name: 'Fahita',
    imagePath: 'assets/items/fahita-snack.jpg',
    description: 'description',
    price: 10,
    category: categories[2],
  ),
  Item(
    name: 'Peppsi',
    imagePath: 'assets/items/pepsi-drink.webp',
    description: 'description',
    price: 10,
    category: categories[3],
  ),
];
