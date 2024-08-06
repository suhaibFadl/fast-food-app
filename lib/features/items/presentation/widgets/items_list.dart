import 'package:fast_food/features/items/data/models/item_model.dart';
import 'package:fast_food/features/items/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 16.0),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        print('index: $index');
        return ItemCard(
          name: items[index].name,
          imagePath: items[index].imagePath,
          description: items[index].description,
          price: items[index].price,
        );
      }, // Creates a 16px spacer
    );
  }
}
