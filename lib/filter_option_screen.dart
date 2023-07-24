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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: "Category",
              text: "clear",
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: listButton.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 60,
                ),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        listButton[index]["text"],
                      ),
                      const Spacer(),
                      Checkbox(
                        value: checkvalue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        fillColor: const MaterialStatePropertyAll(
                          Color(0xFFFEE440),
                        ),
                        checkColor: const Color(0xFF212121),
                        // focusColor:
                        hoverColor: const Color(0xFFF5F5F5),
                        onChanged: (value) {
                          debugPrint("value---> $value");
                          setState(() {
                            checkvalue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: ElevatedCommon(
                elevated: "Show 25 items",
                width: double.infinity,
                hight: 64,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
