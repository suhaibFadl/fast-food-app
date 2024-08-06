import 'package:fast_food/features/items/presentation/widgets/add_to_cart_btn.dart';
import 'package:fast_food/features/items/presentation/widgets/added_to_cart_btn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });
  final String name;
  final String description;
  final String imagePath;
  final int price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 4.0,
                    spreadRadius: .50,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              height: 220,
              width: double
                  .infinity, // Ensure the container takes up the full width
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit
                      .cover, // Ensure the image covers the entire container
                ),
              ),
            ),
            Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, size: 20, color: Colors.amber),
                      Gap(4),
                      Text(
                        '4.0',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(64),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Theme.of(context)
                  //         .primaryColor, // Background color of the IconButton
                  //     shape: BoxShape
                  //         .circle, // Shape of the container (circle for IconButton)
                  //   ),
                  //   child: IconButton(
                  //     icon: Icon(Icons.add),
                  //     color: Colors.white, // Icon color
                  //     onPressed: () {
                  //       // onPressed action
                  //     },
                  //   ),
                  // ),
                  // AddToCartBtn(),
                  AddedToCartBtn(),
                  // Gap(0),
                ],
              ),
            ),
            Gap(16),
          ],
        ),
      ),
    );
  }
}
