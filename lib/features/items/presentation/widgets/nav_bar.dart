import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:fast_food/features/items/presentation/pages/account_settings.dart';
import 'package:fast_food/features/items/presentation/pages/cart_page.dart';
import 'package:fast_food/features/items/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

// int _currentIndex = 1;

class _NavBarState extends State<NavBar> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(0)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(0);

  int _selectedItemPosition = 1;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  Color? containerColor;
  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];

  void _onPageChanged(int page) {
    print('page: $page');
    containerColor = containerColors[page];
    switch (page) {
      case 0:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.floating;
          snakeShape = SnakeShape.circle;
          padding = const EdgeInsets.all(12);
          bottomBarShape =
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;
      case 1:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.pinned;
          snakeShape = SnakeShape.circle;
          padding = EdgeInsets.zero;
          bottomBarShape = RoundedRectangleBorder(borderRadius: _borderRadius);
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;

      case 2:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.pinned;
          snakeShape = SnakeShape.rectangle;
          padding = EdgeInsets.zero;
          bottomBarShape = BeveledRectangleBorder(borderRadius: _borderRadius);
          showSelectedLabels = true;
          showUnselectedLabels = true;
        });
        break;
      case 3:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.pinned;
          snakeShape = SnakeShape.indicator;
          padding = EdgeInsets.zero;
          bottomBarShape = null;
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;
    }
  }

  final pages = [
    CartPage(),
    HomePage(),
    AccountSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    Color selectedColor = Theme.of(context).primaryColor;
    Color unselectedColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: pages[_selectedItemPosition],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          // color: Colors.amber,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset.zero,
              blurRadius: 3,
              spreadRadius: 1.0,
              blurStyle: BlurStyle.normal,
            ),
          ],
        ),
        child: SnakeNavigationBar.color(
          // height: 80,
          behaviour: snakeBarStyle,
          snakeShape: snakeShape,
          shape: bottomBarShape,
          padding: padding,

          ///configuration for SnakeNavigationBar.color
          snakeViewColor: selectedColor,
          selectedItemColor:
              snakeShape == SnakeShape.indicator ? selectedColor : null,
          unselectedItemColor: unselectedColor,

          ///configuration for SnakeNavigationBar.gradient
          // snakeViewGradient: selectedGradient,
          // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
          // unselectedItemGradient: unselectedGradient,

          showUnselectedLabels: showUnselectedLabels,
          showSelectedLabels: showSelectedLabels,

          currentIndex: _selectedItemPosition,
          onTap: (index) => setState(() => _selectedItemPosition = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined, size: 30),
                label: 'tickets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 30), label: 'calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, size: 30), label: 'home'),
          ],
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }

  // void changePage(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //     print(_currentIndex);
  //   });
  // }

  // final pages = [CartPage(), const HomePage(), Container(), Container()];
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     extendBody: true,
  //     body: pages[_currentIndex],
  //     bottomNavigationBar: DotNavigationBar(
  //       // backgroundColor: Colors.grey[200],
  //       backgroundColor: Colors.white,
  //       currentIndex: _currentIndex,
  //       splashColor: Colors.orange[200],
  //       onTap: changePage,
  //       itemPadding: const EdgeInsets.only(bottom: 8, top: 8),
  //       paddingR: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
  //       marginR: const EdgeInsets.only(top: 0),
  //       margin: const EdgeInsets.only(left: 24, right: 24),
  //       dotIndicatorColor: Colors.white,
  //       unselectedItemColor: Colors.grey[300],
  //       splashBorderRadius: 50,
  //       items: [
  //         /// Home
  //         DotNavigationBarItem(
  //             icon: Icon(
  //               _currentIndex == 0
  //                   ? Icons.shopping_basket_outlined
  //                   : Icons.shopping_basket,
  //               size: 40,
  //             ),
  //             selectedColor: Colors.orange,
  //             unselectedColor: Colors.grey[300]),
  //         DotNavigationBarItem(
  //             icon: Icon(
  //               _currentIndex == 1 ? Icons.home_outlined : Icons.home,
  //               size: 40,
  //             ),
  //             selectedColor: Colors.orange,
  //             unselectedColor: Colors.grey[300]),
  //         DotNavigationBarItem(
  //             icon: Icon(
  //                 _currentIndex == 2 ? Icons.person_outlined : Icons.person,
  //                 size: 40),
  //             selectedColor: Colors.orange,
  //             unselectedColor: Colors.grey[300]),

  //         /// Likes
  //       ],
  //     ),
  //   );
  // }
}
