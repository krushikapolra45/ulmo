import 'package:flutter/material.dart';

class ElevatedCommon extends StatelessWidget {
  final String? elevated;
  final IconData? icon;
  final double? radius;
  final double? width;
  final double? hight;
  const ElevatedCommon({
    Key? key,
    this.elevated,
    this.icon,
    this.radius,
    this.width,
    this.hight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xFFFee440)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 8))),
          fixedSize: MaterialStatePropertyAll(
            Size(width!, hight!),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              elevated ?? "",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            if (icon != null)
              Icon(
                icon!,
                color: Colors.black,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}
