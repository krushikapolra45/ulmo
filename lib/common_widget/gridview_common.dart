import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  final String? images;
  final String? price;
  final IconData? icon;
  final String? history;
  final String? cardImages;
  final bool? isCardImages;

  const GridviewScreen({
    super.key,
    this.images,
    this.price,
    this.icon,
    this.history,
    this.cardImages,
    this.isCardImages = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              images ?? "",
            ),
            if (isCardImages!)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  cardImages ?? "",
                  width: 46,
                  height: 24,
                ),
              )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              price!,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              icon!,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            history!,
            style: const TextStyle(
              color: Color(0xFF9E9E9E),
              fontFamily: "Poppins",
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
