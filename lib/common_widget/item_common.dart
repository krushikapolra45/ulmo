import 'package:flutter/material.dart';

class ItemCommon extends StatelessWidget {
  final String? image;
  final String? name;

  const ItemCommon({
    Key? key,
    this.image,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            child: Image.asset(
              image ?? "",
              height: 88,
              width: 88,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12, left: 15),
          child: Text(
            name ?? "",
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
            ),
          ),
        ),
      ],
    );
  }
}
