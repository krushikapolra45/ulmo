import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/filter_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';
import 'package:ulmo/filter_option_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double sliderValue = 0;
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
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "\$0",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$700",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              max: 5,
              min: 0,
              divisions: 5,
              value: sliderValue,
              activeColor: const Color(0xFFFEE440),
              inactiveColor: const Color(0xFFEEEEEE),
              onChanged: (newvalue) {
                setState(() {
                  sliderValue = newvalue;
                });
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FilterOptionScreen(),
                      ));
                },
                child: const Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Spacer(),
                    Text(
                      "furniture",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF9E9E9E),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            const FilterCommon(
              name: "Product type",
            ),
            const SizedBox(height: 25),
            const FilterCommon(
              name: "Color",
            ),
            const SizedBox(height: 25),
            const FilterCommon(
              name: "Size",
            ),
            const SizedBox(height: 25),
            const FilterCommon(
              name: "Quality",
            ),
            const SizedBox(height: 90),
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
