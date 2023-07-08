import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
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
            const SizedBox(
              height: 10,
            ),
            Column(
              children: listButton
                  .map((data) => CheckboxListTile(
                        value: checkvalue,
                        onChanged: (val) {
                          setState(() {
                            checkvalue = val!;
                            if (val == true) {
                              val = checkvalue;
                            }
                          });
                        },
                        activeColor: Color(0xFFFEE440),
                        checkColor: Color(0xFF212121),
                        checkboxShape: const CircleBorder(),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            const ElevatedCommon(
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
