import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String? name;
  final String? text;
  const TitleScreen({Key? key, this.name, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButton(
          color: Colors.black,
        ),
        SizedBox(width: 110),
        Text(
          name ?? "",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Text(
          text ?? "",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
