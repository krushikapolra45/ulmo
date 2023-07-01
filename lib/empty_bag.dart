import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/no_connection_common.dart';

class EmptyBag extends StatefulWidget {
  const EmptyBag({Key? key}) : super(key: key);

  @override
  State<EmptyBag> createState() => _EmptyBagState();
}

class _EmptyBagState extends State<EmptyBag> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          debugPrint("value: ->$value");
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            label: "bag",
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "favorite",
            icon: Icon(
              Icons.favorite_border,
              color: Color(0xFFBDBDBD),
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "person",
            activeIcon: Icon(Icons.person),
            icon: Icon(
              Icons.person_outline,
              color: Color(0xFFBDBDBD),
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "bag",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
            ),
            NoConnection(
              heading: "your bag is empty",
              text: "items remain in your bag for 1 hour,\n and then they’re moved to your Saved items",
              image: "assets/images/surprised.png",
            ),
            ElevatedCommon(
              elevated: "Start shopping",
            ),
          ],
        ),
      ),
    );
  }
}
