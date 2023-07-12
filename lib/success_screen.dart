import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEB70),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Image.asset(
              "assets/images/friendly.png",
              height: 100,
              width: 98,
            ),
            const SizedBox(height: 30),
            const Text(
              textAlign: TextAlign.center,
              "your order is placed",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "thanks for your order, we hope you\n           enjoyed shopping with us",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: Color(0xFF212121),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  fixedSize: const MaterialStatePropertyAll(Size(343, 64)),
                  side: const MaterialStatePropertyAll(BorderSide(width: 2)),
                ),
                onPressed: () {},
                child: const Text(
                  "To my orders",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
