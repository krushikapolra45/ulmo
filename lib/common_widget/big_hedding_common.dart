import 'package:flutter/material.dart';

class BigHeddingScreen extends StatelessWidget {
  final String? name;
  final String? hedding;
  const BigHeddingScreen({Key? key, this.name, this.hedding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const BackButton(
              color: Colors.black,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                name ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              hedding ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Color(0xFF212121),
                fontSize: 32,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
