class Category {
  final String name;
  final String iconPath;

  Category({required this.name, required this.iconPath});
}

List<Category> categories = [
  Category(
    name: 'Burgers',
    iconPath: 'assets/icons/burger.png',
  ),
  Category(
    name: 'Pizza',
    iconPath: 'assets/icons/pizza.png',
  ),
  Category(
    name: 'Snacks',
    iconPath: 'assets/icons/sandwich.png',
  ),
  Category(
    name: 'Drinks',
    iconPath: 'assets/icons/drink.png',
  ),
];
