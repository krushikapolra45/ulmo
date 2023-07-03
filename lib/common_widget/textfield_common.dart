import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  final String? name;
  final IconData? icon;
  const TextFieldScreen({Key? key, this.name, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            isDense: true,
            border: InputBorder.none,
            filled: true,
            fillColor: Color(0xFFF5F5F5),
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    icon!,
                    color: Color(0xFF9E9E9E),
                    size: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name ?? "",
                    style: const TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                      fontFamily: "poppins",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
