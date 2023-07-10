import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';
import 'package:ulmo/common_widget/totle_price_common.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "My orders",
            ),
            TextFieldScreen(
              icon: Icons.search_rounded,
              name: "search",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 190,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "sort",
                        style: TextStyle(color: Color(0xFF212121), fontSize: 15),
                      ),
                      Icon(
                        Icons.swap_vert,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 190,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "filter",
                        style: TextStyle(color: Color(0xFF212121), fontSize: 15),
                      ),
                      Image.asset(
                        "assets/images/filtertwo.png",
                        height: 18,
                        width: 18,
                      )
                    ],
                  ),
                ),
              ],
            ),
            TotlePriceScreen(
              totle: "Yesterday, 10:00 am",
              price: "\$420.50",
              code: "Waiting for payment",
              codeprice: "#23124",
            )
          ],
        ),
      ),
    );
  }
}
