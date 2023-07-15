import 'package:flutter/material.dart';

class SemDetailCommon extends StatelessWidget {
  final String? name;
  final String? title;
  final double? checkbox;
  final IconData? icon;
  final String? image;
  final double? width;
  final double? hight;
  const SemDetailCommon({Key? key, this.name, this.title, this.checkbox, this.icon, this.image, this.width, this.hight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Image.asset(
            image ?? "",
            width: width!,
            height: hight!,
          ),
          if (icon != null)
            Icon(
              icon!,
              color: Colors.black,
              size: 24,
            ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? "",
                  style: const TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
                Text(
                  title ?? "",
                  style: const TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 14,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
