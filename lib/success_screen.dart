import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/no_connection_common.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEB70),
      body: SafeArea(
        child: Column(
          children: [
            const NoConnection(
              image: "assets/images/friendly.png",
              heading: "your order is placed",
              colors: Color(0xFF000000),
              text: "thanks for your order, we hope you \n         senjoyed shopping with us",
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 64,
                  width: 343,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF212121),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "To my orders",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
