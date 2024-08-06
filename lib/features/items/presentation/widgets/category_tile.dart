import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.categoryName,
    required this.iconPath,
    required this.isActive,
  });

  final String categoryName;
  final String iconPath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 90,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: isActive ? Colors.white : Colors.grey[100],
            ),
            child: Image.asset(
              iconPath,
              width: 35,
              // height: 40,
            ),
          ),
          Gap(8),
          Text(
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
          Gap(12),
        ],
      ),
    );
  }
}
