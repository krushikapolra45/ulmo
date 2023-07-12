import 'package:flutter/material.dart';

class TotlePriceScreen extends StatelessWidget {
  final String? total;
  final String? price;
  final String? code;
  final String? codeprice;
  const TotlePriceScreen({Key? key, this.total, this.price, this.code, this.codeprice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(total ?? "",
                style: const TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                )),
            const Spacer(),
            Text(
              price ?? "",
              style: const TextStyle(
                color: Color(0xFF212121),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              code ?? "",
              style: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 16),
            ),
            const Spacer(),
            Text(
              codeprice ?? "",
              style: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
