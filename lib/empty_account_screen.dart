import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/country_list_screen.dart';

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
            const SizedBox(height: 100),
            Image.asset(
              "assets/images/smiley.png",
              height: 100,
              width: 98,
            ),
            const SizedBox(height: 30),
            const Text(
              "come on in",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF212121),
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "view orders and update your details",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF9E9E9E),
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 150),
            ElevatedCommon(
              elevated: "Continue with phone",
              width: double.infinity,
              hight: 64,
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CountryListScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
