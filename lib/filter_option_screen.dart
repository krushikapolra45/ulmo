import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class FilterOptionScreen extends StatefulWidget {
  const FilterOptionScreen({Key? key}) : super(key: key);

  @override
  State<FilterOptionScreen> createState() => _FilterOptionScreenState();
}

class _FilterOptionScreenState extends State<FilterOptionScreen> {
  bool checkvalue = false;

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: "Category",
              text: "clear",
            ),
            ListTile(
              leading: Checkbox(
                value: checkvalue,
                fillColor: const MaterialStatePropertyAll(
                  Color(0xFFFEE440),
                ),
                checkColor: Colors.black,
                onChanged: (value) {
                  debugPrint("value---> $value");
                  setState(() {
                    checkvalue = value!;
                    Transform.scale(
                      scale: 5,
                    );
                  });
                },
              ),
              title: const Text(
                "Furniture",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
