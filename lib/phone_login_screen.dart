import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/big_hedding_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

import 'sms_code_screen.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BigHeddingScreen(
              name: "help",
              hedding: "enter your phone\nnumber",
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (!RegExp(r"^(?:[+0]9)?[0-9]{10,12}$").hasMatch(value!)) {
                      return "Please enter valid number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    isDense: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 2),
                    ),
                    hintText: "phone number",
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images_three/russia.png", width: 10, height: 10),
                    ),
                    fillColor: const Color(0xFFF5F5F5),
                    hintStyle: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "sf-pro-display-cufonfonts"),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            ElevatedCommon(
              width: double.infinity,
              hight: 64,
              elevated: "continue",
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SmsCodeScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
