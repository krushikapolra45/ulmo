import 'package:flutter/material.dart';

class ElevatedCommon extends StatelessWidget {
  final String? elevated;
  const ElevatedCommon({Key? key, this.elevated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFFFee440),
            ),
            fixedSize: MaterialStatePropertyAll(
              Size(390, 64),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                elevated ?? "",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
