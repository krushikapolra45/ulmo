import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/categories_common.dart';
import 'package:ulmo/common_widget/textfield_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class DeliveryCountryScreen extends StatefulWidget {
  const DeliveryCountryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryCountryScreen> createState() => _DeliveryCountryScreenState();
}

class _DeliveryCountryScreenState extends State<DeliveryCountryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "Delivery country",
            ),
            TextFieldScreen(
              name: "search",
              icon: Icons.search_rounded,
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/britain.png",
              hight: 18,
              width: 18,
              itemname: "Great Britain",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/denmark.png",
              hight: 18,
              width: 18,
              itemname: "Denmark",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/france.png",
              hight: 18,
              width: 18,
              itemname: "France",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/germony.png",
              hight: 18,
              width: 18,
              itemname: "Germany",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/italy.png",
              hight: 18,
              width: 18,
              itemname: "Italy",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/netherlands.png",
              hight: 18,
              width: 18,
              itemname: "Netherlands",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/poland.png",
              hight: 18,
              width: 18,
              itemname: "Poland",
            ),
            SizedBox(height: 10),
            CategoriesCommon(
              images: "assets/images_three/russia.png",
              hight: 18,
              width: 18,
              itemname: "Russia",
            ),
          ],
        ),
      ),
    );
  }
}
