import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String? name;
  const TitleScreen({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButton(
          color: Colors.black,
        ),
        SizedBox(width: 120),
        Text(
          name ?? "",
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
