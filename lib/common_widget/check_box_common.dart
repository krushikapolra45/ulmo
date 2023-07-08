import 'package:flutter/material.dart';

class CheckBoxCommon extends StatelessWidget {
  const CheckBoxCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CheckboxListTile(
          value: checkvalue,
          onChanged: (value) {
            setState(() {
              checkvalue = value!;
            });
          },
          activeColor: Color(0xFFFEE440),
          checkColor: Color(0xFF212121),
          checkboxShape: const CircleBorder(),
          title: const Text(
            "Furniture",
            style: TextStyle(color: Color(0xFF212121), fontSize: 20),
          ),
        ),
      ),
    );
  }
}
