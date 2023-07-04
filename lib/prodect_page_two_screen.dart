import 'package:flutter/material.dart';

class ProductPageTwoScreen extends StatefulWidget {
  const ProductPageTwoScreen({Key? key}) : super(key: key);

  @override
  State<ProductPageTwoScreen> createState() => _ProductPageTwoScreenState();
}

class _ProductPageTwoScreenState extends State<ProductPageTwoScreen> {
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
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
