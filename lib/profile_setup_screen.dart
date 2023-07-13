import 'package:flutter/material.dart';

import 'common_widget/elevated_common.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Text(
                    "Set up your profile",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 80),
                Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xFFEEEEEE),
                ),
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFFF5F5F5),
              ),
              child: Icon(Icons.camera_alt_outlined, size: 18),
            ),
            Text(
              "Upload photo",
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedCommon(
              width: double.infinity,
              hight: 64,
              elevated: "continue",
            ),
          ],
        ),
      ),
    );
  }
}
