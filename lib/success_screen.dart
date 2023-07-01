import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEB70),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/friendly.png",
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "your order is placed",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "thanks for your order, we hope you\nenjoyed shopping with us",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF212121),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              height: 64,
              width: 343,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF212121),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "To my orders",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
