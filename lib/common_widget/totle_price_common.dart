import 'package:flutter/material.dart';

class TotlePriceScreen extends StatelessWidget {
  final String? totle;
  final String? price;
  final String? code;
  final String? codeprice;

  const TotlePriceScreen({
    Key? key,
    this.totle,
    this.price,
    this.code,
    this.codeprice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(totle ?? "",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
            Spacer(),
            Text(
              price ?? "",
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              code ?? "",
              style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16),
            ),
            Spacer(),
            Text(
              codeprice ?? "",
              style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
