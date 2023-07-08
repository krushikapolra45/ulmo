import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/no_connection_common.dart';

class EmptyAccountScreen extends StatefulWidget {
  const EmptyAccountScreen({Key? key}) : super(key: key);

  @override
  State<EmptyAccountScreen> createState() => _EmptyAccountScreenState();
}

class _EmptyAccountScreenState extends State<EmptyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.settings_outlined, color: Color(0xFF212121), size: 25),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "my account",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
            ),
            NoConnection(
              image: "assets/images/smiley.png",
              heading: "come on in",
              text: "view orders and update your details",
            ),
            Row(
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
