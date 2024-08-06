import 'package:flutter/material.dart';

class AddedToCartBtn extends StatelessWidget {
  const AddedToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Container(
        // margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.orange.shade100,
            width: 1.85,
          ),
        ),
        child: Row(
          children: [
            Text(
              'Added To Cart',
              style: TextStyle(
                  color: Colors.orange.shade100, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
