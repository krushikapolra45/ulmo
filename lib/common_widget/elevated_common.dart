import 'package:flutter/material.dart';

class ElevatedCommon extends StatelessWidget {
  final String? elevated;
  final IconData? icon;
  const ElevatedCommon({
    Key? key,
    this.elevated,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 343,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFFFee440),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Text(
                elevated ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                icon!,
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
