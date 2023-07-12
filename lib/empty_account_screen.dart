import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

class EmptyAccountScreen extends StatefulWidget {
  const EmptyAccountScreen({Key? key}) : super(key: key);

  @override
  State<EmptyAccountScreen> createState() => _EmptyAccountScreenState();
}

class _EmptyAccountScreenState extends State<EmptyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.settings_outlined, color: Color(0xFF212121), size: 25),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "my account",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFF212121),
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/images/smiley.png",
              height: 100,
              width: 98,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "come on in",
              style: const TextStyle(
                fontSize: 24,
                color: Color(0xFF212121),
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "view orders and update your details",
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF9E9E9E),
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedCommon(
                  elevated: "Continue with phone",
                  width: double.infinity,
                  hight: 36,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
