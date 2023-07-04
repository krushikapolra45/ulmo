import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class FilterOptionScreen extends StatefulWidget {
  const FilterOptionScreen({Key? key}) : super(key: key);

  @override
  State<FilterOptionScreen> createState() => _FilterOptionScreenState();
}

class _FilterOptionScreenState extends State<FilterOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "Category",
              text: "clear",
            ),
          ],
        ),
      ),
    );
  }
}
