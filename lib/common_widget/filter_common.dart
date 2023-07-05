import 'package:flutter/material.dart';

class FilterCommon extends StatelessWidget {
  final String? name;

  const FilterCommon({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            name ?? "",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Text(
            "All",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF9E9E9E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
