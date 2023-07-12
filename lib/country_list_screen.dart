import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/big_hedding_common.dart';
import 'package:ulmo/common_widget/categories_common.dart';
import 'package:ulmo/phone_login_screen.dart';

class CountryListScreen extends StatefulWidget {
  const CountryListScreen({Key? key}) : super(key: key);

  @override
  State<CountryListScreen> createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigHeddingScreen(
              hedding: "choose your country",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/britain.png",
              hight: 18,
              width: 18,
              itemname: "Great Britain",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/denmark.png",
              hight: 18,
              width: 18,
              itemname: "Denmark",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/france.png",
              hight: 18,
              width: 18,
              itemname: "France",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/germony.png",
              hight: 18,
              width: 18,
              itemname: "Germany",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/italy.png",
              hight: 18,
              width: 18,
              itemname: "Italy",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/netherlands.png",
              hight: 18,
              width: 18,
              itemname: "Netherlands",
            ),
            const SizedBox(height: 10),
            const CategoriesCommon(
              images: "assets/images_three/poland.png",
              hight: 18,
              width: 18,
              itemname: "Poland",
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneLogin(),
                    ));
              },
              child: const CategoriesCommon(
                images: "assets/images_three/russia.png",
                hight: 18,
                width: 18,
                itemname: "Russia",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
