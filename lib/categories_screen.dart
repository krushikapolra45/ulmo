import 'package:flutter/material.dart';

import 'common_widget/categories_common.dart';
import 'common_widget/textfield_common.dart';
import 'common_widget/titlename_common.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "living room",
            ),
            TextFieldScreen(
              name: "search",
              icon: Icons.search_rounded,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    fontFamily: "poppins",
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CategoriesCommonScreen(
                      images: "assets/images_two/furniture.png",
                      itemname: "furniture",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/lighting.png",
                      itemname: "lighting",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/rugs.png",
                      itemname: "rugs",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/mirrors.png",
                      itemname: "mirrors",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/blankets.png",
                      itemname: "blankets",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/cushions.png",
                      itemname: "cushions",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/curtains.png",
                      itemname: "curtains",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/baskets.png",
                      itemname: "baskets",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/vases.png",
                      itemname: "vases",
                    ),
                    CategoriesCommonScreen(
                      images: "assets/images_two/boxes.png",
                      itemname: "boxes",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
