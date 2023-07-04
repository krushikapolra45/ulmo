import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/gridview_common.dart';
import 'package:ulmo/common_widget/product_page.dart';

class ProductPageScreen extends StatefulWidget {
  const ProductPageScreen({Key? key}) : super(key: key);

  @override
  State<ProductPageScreen> createState() => _ProductPageScreenState();
}

class _ProductPageScreenState extends State<ProductPageScreen> {
  List<Map<String, dynamic>> furnitureList = [
    {
      "populerImage": "assets/images/squretable.png",
      "price": "\$140.25",
      "icon": Icons.favorite_border,
      "history": "Square bedside table\nwith legs, a rattan shelf and a...",
    },
    {
      "populerImage": "assets/images/tvtable.png",
      "price": "\$450.00",
      "icon": Icons.favorite_border,
      "history": "Dark wood side board\nwith a faceted drawer",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProductPage(
              images: "assets/images/imgtbl.png",
              icons: Icons.arrow_back,
              iconsTwo: Icons.favorite_border,
              price: "\$15.99",
              text: "Silicone and acacia wood spoon rest.",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: furnitureList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 280,
                  ),
                  itemBuilder: (context, index) {
                    return GridviewScreen(
                      images: furnitureList[index]["populerImage"],
                      icon: furnitureList[index]["icon"],
                      price: furnitureList[index]["price"],
                      history: furnitureList[index]["history"],
                      // cardImages: furnitureList[index]["cardImages"],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
