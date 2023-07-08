import 'package:flutter/material.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({Key? key}) : super(key: key);

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "bag",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/woodtblroom.png",
                        height: 115,
                        width: 94,
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/squretable.png",
                        height: 115,
                        width: 94,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        textAlign: TextAlign.start,
                        "\$150.00",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF212121),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Wooden bedside table featuring a\nraised design",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Container(
                        height: 36,
                        width: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF5F5F5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.remove,
                              color: Color(0xFF9E9E9E),
                              size: 20,
                            ),
                            Text(
                              "0",
                              style: TextStyle(color: Color(0xFF212121), fontSize: 14),
                            ),
                            Icon(
                              Icons.add,
                              color: Color(0xFF212121),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        "\$280.50",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF212121),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Square bedside table with legs, a \nrattan shelf and a...",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Container(
                        height: 36,
                        width: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF5F5F5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.remove,
                              color: Color(0xFF212121),
                              size: 20,
                            ),
                            Text(
                              "2",
                              style: TextStyle(color: Color(0xFF212121), fontSize: 14),
                            ),
                            Icon(
                              Icons.add,
                              color: Color(0xFF212121),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.cancel_outlined,
                        color: Color(0xFF9E9E9E),
                        size: 24,
                      ),
                      SizedBox(
                        height: 115,
                      ),
                      Icon(
                        Icons.cancel_outlined,
                        color: Color(0xFF9E9E9E),
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "promocode",
              style: TextStyle(color: Color(0xFF212121), fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
