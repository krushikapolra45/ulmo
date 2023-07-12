import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/big_hedding_common.dart';

class SmsCodeScreen extends StatefulWidget {
  const SmsCodeScreen({Key? key}) : super(key: key);

  @override
  State<SmsCodeScreen> createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigHeddingScreen(
              name: "help",
              hedding: "welcome!\nenter code from sms",
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "We sent it to +7 912 323-32-12",
                style: TextStyle(
                  color: Color(0xFF9E9E9E),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 48,
                  height: 64,
                  decoration: BoxDecoration(color: Color(0xFF)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
