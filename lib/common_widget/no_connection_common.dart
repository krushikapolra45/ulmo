import 'package:flutter/material.dart';

class NoConnection extends StatelessWidget {
  final String? title;
  final String? image;
  final String? heading;
  final String? text;
  final String? elevated;

  const NoConnection({Key? key, this.title, this.heading, this.text, this.elevated, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 180,
        ),
        Image.asset(
          image ?? "",
          height: 100,
          width: 98,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          heading ?? "",
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          text ?? "",
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF9E9E9E),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
