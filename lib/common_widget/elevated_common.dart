import 'package:flutter/material.dart';

class ElevatedCommon extends StatelessWidget {
  final String? elevated;
  const ElevatedCommon({Key? key, this.elevated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 343,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFFFee440),
            ),
          ),
          onPressed: () {},
          child: Text(
            elevated ?? "",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
