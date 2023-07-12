import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class FilterOptionScreen extends StatefulWidget {
  const FilterOptionScreen({Key? key}) : super(key: key);

  @override
  State<FilterOptionScreen> createState() => _FilterOptionScreenState();
}

class _FilterOptionScreenState extends State<FilterOptionScreen> {
  bool? checkvalue = false;
  bool? checkListButton = false;
  List<Map<String, dynamic>> listButton = [
    {"index": 1, "text": "Furniture"},
    {"index": 2, "text": "Lighting"},
    {"index": 3, "text": "Rugs"},
    {"index": 4, "text": "Mirrors"},
    {"index": 5, "text": "Blankets"},
    {"index": 6, "text": "Cushions"},
    {"index": 7, "text": "Curtains"},
    {"index": 8, "text": "Baskets"},
    {"index": 9, "text": "Vases"},
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "Category",
              text: "clear",
            ),
            SizedBox(height: 10),
            Column(
              children: [],
            ),
            SizedBox(height: 30),
            ElevatedCommon(
              elevated: "Show 25 items",
              width: double.infinity,
              hight: 64,
            ),
          ],
        ),
      ),
    );
  }
}
