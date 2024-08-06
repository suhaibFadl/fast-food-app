import 'package:fast_food/features/items/presentation/widgets/category_list.dart';
import 'package:flutter/material.dart';

class CategoriesSliverDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 140;

  @override
  double get maxExtent => 140;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CategoriesList();
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false; // Return true if the delegate should be recreated when it changes, false otherwise
  }
}
