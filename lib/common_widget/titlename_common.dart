import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String? name;
  final String? text;
  const TitleScreen({Key? key, this.name, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackButton(
          color: Colors.black,
        ),
        const SizedBox(width: 100),
        Text(
          name ?? "",
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 90),
        Text(
          text ?? "",
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
