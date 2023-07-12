import 'package:flutter/material.dart';

class CategoriesCommon extends StatelessWidget {
  final String? images;
  final String? itemname;
  final double? hight;
  final double? width;
  const CategoriesCommon({Key? key, this.images, this.itemname, this.hight, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset(
            images ?? "",
            width: width!,
            height: hight!,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            itemname ?? "",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
