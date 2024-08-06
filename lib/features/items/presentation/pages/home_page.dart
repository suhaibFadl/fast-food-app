import 'package:fast_food/features/items/data/models/item_model.dart';
import 'package:fast_food/features/items/presentation/widgets/category_list.dart';
import 'package:fast_food/features/items/presentation/widgets/item_card.dart';
import 'package:fast_food/features/items/presentation/widgets/items_list.dart';
import 'package:fast_food/features/items/presentation/widgets/categories_sliver_delegate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.grey[100],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.my_location_outlined),
        ),
        backgroundColor: Colors.grey[100],
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'AinZara',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.grey[100],
              expandedHeight: 100,
              flexibleSpace: const Text(
                'Main\nCategories',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: CategoriesSliverDelegate(),
            ),
            ItemsList(),
            SliverPadding(padding: EdgeInsets.all(8)),
          ],
        ),
      ),
    );

    //   body: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const Text(
    //           'Main\nCategories',
    //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //         ),
    //         Gap(16),
    //         CategoriesList(),
    //         Gap(16),
    //         ItemsList(),
    //       ],
    //     ),
    //   ),
    // );
  }
}




//  CustomScrollView(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         slivers: [
//           SliverToBoxAdapter(
//             child: const Text(
//               'Main\nCategories',
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Column(
//               children: [
//                 Gap(16),
//                 SizedBox(height: 130, child: CategoriesList()),
//                 Gap(16),
//                 // ItemsList(),
//                 Expanded(
//                   child: ListView.separated(
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     separatorBuilder: (context, index) => SizedBox(height: 24),
//                     itemCount: items.length,
//                     itemBuilder: (context, index) {
//                       return InkWell(
//                         borderRadius: BorderRadius.circular(30),
//                         onTap: () {},
//                         child: ItemCard(
//                           name: items[index].name,
//                           imagePath: items[index].imagePath,
//                           description: items[index].description,
//                           price: items[index].price,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),

