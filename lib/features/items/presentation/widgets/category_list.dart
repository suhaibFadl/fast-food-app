import 'package:fast_food/features/items/data/models/category_model.dart';
import 'package:fast_food/features/items/presentation/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class CategoriesList extends StatefulWidget {
  CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _categorieIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 12, top: 4),
      decoration: BoxDecoration(color: Colors.grey[100]),
      height: 160,
      width: MediaQuery.of(context).size.width * .9,
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(20),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(38),
            onTap: () {
              setState(() {
                _categorieIndex = index;
              });
            },
            child: CategoryTile(
              categoryName: categories[index].name,
              iconPath: categories[index].iconPath,
              isActive: _categorieIndex == index,
            ),
          );
        },
      ),
    );
  }
}

// List<Map<String, dynamic>> categories = [
//   {
//     'name': 'Burgers',
//     'icon': 'assets/icons/burger.png',
//   },
//   {
//     'name': 'Pizza',
//     'icon': 'assets/icons/pizza.png',
//   },
//   {
//     'name': 'Snacks',
//     'icon': 'assets/icons/sandwich.png',
//   },
//   {
//     'name': 'Drinks',
//     'icon': 'assets/icons/drink.png',
//   },
// ];
