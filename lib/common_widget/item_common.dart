import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final String? image;
  final String? name;

  const ItemScreen({
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
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            child: Image.asset(
              image ?? "",
              height: 88,
              width: 88,
              // fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            name ?? "",
            style: const TextStyle(
              fontSize: 15,
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
