import 'package:fast_food/features/items/data/models/item_model.dart';
import 'package:fast_food/features/items/presentation/widgets/add_to_cart_btn.dart';
import 'package:fast_food/features/items/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final locations = ['Location1', 'Location2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // titleSpacing: 200,
          toolbarHeight: 90,
          title: Text(
            'My Cart',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Gap(16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.07), // Top shadow color
                    Colors.transparent, // Transparent color
                  ],
                  stops: [
                    0.0,
                    0.05
                  ], // Adjust the stop values to control the shadow size
                ),
              ),
              height: MediaQuery.of(context).size.height * .47,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 16.0),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    print('index: $index');
                    return CartItem(
                      name: items[index].name,
                      imagePath: items[index].imagePath,
                      price: items[index].price,
                    );
                  }),
            ),
            Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Container(
                      // height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.only(right: 8),
                      child: DropdownButton(
                        itemHeight: 70,
                        iconSize: 35,
                        iconEnabledColor: Theme.of(context).primaryColor,
                        isExpanded: true,
                        onChanged: (bool) {},
                        items: locations
                            .map((e) =>
                                DropdownMenuItem(child: Text(e), value: e))
                            .toList(),
                      ),
                    ),
                    Gap(4),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50.0)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          // Corrected line
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Colors.red,
                            width: 1.3,
                          ),
                        ),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1); // Hover color
                            }
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed)) {
                              return Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3); // Press color
                            }
                            return null; // Use default color
                          },
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_location_alt_outlined,
                            size: 25,
                            color: Theme.of(context).primaryColor,
                            // fill: .2,
                          ),
                          Gap(4),
                          Text(
                            'New Location',
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Theme.of(context).primaryColor,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Gap(25),
                        ],
                      ),
                    ),
                    Gap(16),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivey:',
                            style: Theme.of(context).textTheme.titleSmall),
                        Spacer(),
                        Text('10',
                            style: Theme.of(context).textTheme.bodyMedium),
                        Gap(16),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total:',
                            style: Theme.of(context).textTheme.titleSmall),
                        Spacer(),
                        Text('60',
                            style: Theme.of(context).textTheme.bodyMedium),
                        Gap(16),
                      ],
                    ),
                    Gap(16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50.0)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          // Corrected line
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor,
                        ),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1); // Hover color
                            }
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed)) {
                              return Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3); // Press color
                            }
                            return null; // Use default color
                          },
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            size: 25,
                            color: Colors.white,
                            // fill: .2,
                          ),
                          Gap(4),
                          Text(
                            'Confirm',
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
