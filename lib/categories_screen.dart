import 'package:flutter/material.dart';
import 'package:ulmo/catalog_screen.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: "living room",
            ),
            const TextFieldScreen(
              name: "search",
              icon: Icons.search_rounded,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CatalogScreen(),
                          ),
                        );
                      },
                      child: const CategoriesCommon(
                        images: "assets/images_two/furniture.png",
                        itemname: "furniture",
                      ),
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/lighting.png",
                      itemname: "lighting",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/rugs.png",
                      itemname: "rugs",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/mirrors.png",
                      itemname: "mirrors",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/blankets.png",
                      itemname: "blankets",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/cushions.png",
                      itemname: "cushions",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/curtains.png",
                      itemname: "curtains",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/baskets.png",
                      itemname: "baskets",
                    ),
                    const CategoriesCommon(
                      images: "assets/images_two/vases.png",
                      itemname: "vases",
                    ),
                    const CategoriesCommon(
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
