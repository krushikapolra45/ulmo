import 'package:flutter/material.dart';
import 'package:ulmo/bag_screen.dart';
import 'package:ulmo/catalog_screen.dart';
import 'package:ulmo/categories_screen.dart';
import 'package:ulmo/main_page_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  List<Widget> ScreenList = [
    MainPageScreen(),
    BagScreen(),
    CatalogScreen(),
    CategoriesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xFFBDBDBD),
        onTap: (value) {
          debugPrint("value: ->$value");
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/images_two/logotype.png",
              width: 32,
              height: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.shopping_bag_outlined,
              // color: Color(0xFFBDBDBD),
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.favorite_border,
              // color: Color(0xFFBDBDBD),
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            activeIcon: Icon(Icons.person),
            icon: Icon(
              Icons.person_outline,
              // color: Color(0xFFBDBDBD),
              size: 32,
            ),
          ),
        ],
      ),

      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: currentIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   destinations: const [
      //     B(
      //       selectedIcon: Icon(Icons.home_outlined, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(CupertinoIcons.tickets, color: Color(0xFFFFFFFF)),
      //       icon: Icon(CupertinoIcons.tickets),
      //       label: 'Book',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.bookmark_border_outlined, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.bookmark_border_outlined),
      //       label: 'Saved',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.person_outline_sharp, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.person_outline_sharp),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
