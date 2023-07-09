import 'package:flutter/material.dart';

class ContactTitleCommon extends StatelessWidget {
  final String? title;
  final String? name;

  const ContactTitleCommon({
    Key? key,
    this.title,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackButton(
          color: Color(0xFF212121),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Column(
            children: [
              Text(
                title ?? "",
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                name ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF9E9E9E),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
