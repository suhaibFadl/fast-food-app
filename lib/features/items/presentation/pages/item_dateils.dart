import 'package:fast_food/features/items/presentation/widgets/add_to_cart_btn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white60,
                  size: 30,
                ),
                onPressed: () {}),
            expandedHeight: 400,
            flexibleSpace: Container(
              height: 420,
              width: double.infinity,
              child: ClipRRect(
                child: Image.asset(
                  'assets/items/classic-burger.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: Container(
                height: 20,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Classic Burger',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Spacer(),
                      Text(
                        '\$10',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      // Gap(8),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, size: 20, color: Colors.orange),
                          Icon(Icons.star, size: 20, color: Colors.orange),
                          Icon(Icons.star, size: 20, color: Colors.orange),
                          Icon(Icons.star, size: 20, color: Colors.orange),
                          Icon(Icons.star_outline,
                              size: 20, color: Colors.orange),
                          Gap(4),
                          Text(
                            '4.0',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                          Gap(8),
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Reviews(32)',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      // Gap(8),
                    ],
                  ),
                  Gap(32),
                  Text(
                    'Item Ingrediants',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Gap(16),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      Chip(
                        label: Text('Bread',
                            style: Theme.of(context).textTheme.bodyMedium),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            width: 1.5,
                            color: Theme.of(context)
                                .primaryColor, // Change this color to your desired border color
                          ),
                        ),
                      ),
                      Chip(
                        label: Text(
                          'Cow Meat Slice',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            width: 1.5,
                            color: Theme.of(context)
                                .primaryColor, // Change this color to your desired border color
                          ),
                        ),
                      ),
                      Chip(
                        label: Text('Union',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            width: 1.5,
                            color: Theme.of(context)
                                .primaryColor, // Change this color to your desired border color
                          ),
                        ),
                      ),
                      Chip(
                        label: Text('Egg',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            width: 1.5,
                            color: Theme.of(context)
                                .primaryColor, // Change this color to your desired border color
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
        child: AddToCartBtn(),
      ),
    );
  }
}
