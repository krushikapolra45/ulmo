import 'package:flutter/material.dart';

class CalanderCommon extends StatelessWidget {
  final String? date;
  const CalanderCommon({
    Key? key,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xFFE0E0E0),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          date ?? "",
          style: const TextStyle(
            color: Color(0xFF212121),
            fontSize: 15,
            fontFamily: "Poppins",
          ),
        ),
      ),
    );
  }
}
