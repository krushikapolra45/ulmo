import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';

class SavedItemScreen extends StatefulWidget {
  const SavedItemScreen({Key? key}) : super(key: key);

  @override
  State<SavedItemScreen> createState() => _SavedItemScreenState();
}

class _SavedItemScreenState extends State<SavedItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "saved items",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  fontSize: 32,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(4),
              child: const TextFieldScreen(
                name: "search",
                icon: Icons.search_rounded,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 175,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "sort",
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 15,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Icon(
                        Icons.swap_vert,
                        size: 18,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 175,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "filter",
                        style: TextStyle(color: Color(0xFF212121), fontSize: 15),
                      ),
                      Image.asset(
                        "assets/images/filtertwo.png",
                        height: 18,
                        width: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
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
                  padding: const EdgeInsets.only(left: 12, top: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        textAlign: TextAlign.start,
                        "\$150.00",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF212121),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Wooden bedside table featuring a \nraised design",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF9E9E9E),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 36,
                        width: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFFEE440),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 9.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Move to bag",
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        textAlign: TextAlign.start,
                        "\$280.50",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF212121),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Square bedside table with legs, a\nrattan shelf and a...",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF9E9E9E),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 36,
                        width: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFFEE440),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 9.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Move to bag",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.cancel_outlined,
                        color: Color(0xFF9E9E9E),
                      ),
                      SizedBox(height: 110),
                      Icon(
                        Icons.cancel_outlined,
                        color: Color(0xFF9E9E9E),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
