import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

import 'popover_screen.dart';

class NewReviewScreen extends StatefulWidget {
  const NewReviewScreen({Key? key}) : super(key: key);

  @override
  State<NewReviewScreen> createState() => _NewReviewScreenState();
}

class _NewReviewScreenState extends State<NewReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                CloseButton(
                  color: const Color(0xFF212121),
                  onPressed: (() {}),
                ),
                const SizedBox(width: 100),
                const Text(
                  "New review",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Image.asset(
              "assets/images/Rating1.png",
              height: 32,
              width: 192,
            ),
            const SizedBox(height: 10),
            const Text(
              "Nice",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF9E9E9E),
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your review",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF9E9E9E),
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text(
                      "Everything is good. Nice qualityNice",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF212121),
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Row(
                children: [
                  Image.asset("assets/images/Large camera.png", width: 54, height: 54),
                  const SizedBox(width: 10),
                  Image.asset("assets/images/closetbl.png", width: 54, height: 54),
                  const SizedBox(width: 10),
                  Image.asset("assets/images/closelock.png", width: 54, height: 54),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedCommon(
              elevated: "Send review",
              width: double.infinity,
              hight: 64,
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PopoverScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
