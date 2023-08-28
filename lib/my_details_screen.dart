import 'package:flutter/material.dart';

import 'common_widget/titlename_common.dart';

class MyDetailsScreen extends StatefulWidget {
  const MyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MyDetailsScreen> createState() => _MyDetailsScreenState();
}

class _MyDetailsScreenState extends State<MyDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: "my details",
              text: "save",
            ),
            const SizedBox(height: 30),
            Image.asset(
              "assets/images/avatargirl.png",
              height: 56,
              width: 56,
            ),
            const SizedBox(height: 20),
            const Text(
              "change photo",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (!RegExp(r"^[a-z0-9]").hasMatch(value!)) {
                      return "Please enter  fullName";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "full Name",
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {},
                ),
              ),
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
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "phone",
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Email",
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (!RegExp(r"(?:19|20)\d\d").hasMatch(value!)) {
                      return "Please enter valid birthdate";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "date of birth",
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
