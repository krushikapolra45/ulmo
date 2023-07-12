import 'package:flutter/material.dart';

class CategoriesCommon extends StatelessWidget {
  final String? images;
  final String? itemname;
  const CategoriesCommon({Key? key, this.images, this.itemname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset(images ?? "", width: 36, height: 36),
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
