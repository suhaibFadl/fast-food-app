import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.price});
  final String imagePath;
  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // padding: E,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          height: 100,
          width: 100, // Ensure the container takes up the full width
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Ensure the image covers the entire container
            ),
          ),
        ),
        Gap(8),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Theme.of(context).textTheme.titleSmall),
            Gap(16),
            Text('\$$price', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Color.fromARGB(118, 244, 67, 54),
                  size: 20,
                )),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text('1', style: Theme.of(context).textTheme.bodyMedium),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle),
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
