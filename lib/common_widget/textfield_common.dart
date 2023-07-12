import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  final String? name;
  final IconData? icon;
  final IconData? iconTwo;
  final InputBorder? enabledBorder;

  const TextFieldScreen({Key? key, this.name, this.icon, this.enabledBorder, this.iconTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: enabledBorder,
            contentPadding: const EdgeInsets.all(20),
            isDense: true,
            border: InputBorder.none,
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    icon!,
                    color: const Color(0xFF9E9E9E),
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
                      fontFamily: "Poppins",
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    iconTwo,
                    color: const Color(0xFF212121),
                    size: 24,
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
