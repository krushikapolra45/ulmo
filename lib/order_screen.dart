import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/titlename_common.dart';
import 'package:ulmo/common_widget/total_price_common.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleScreen(
                name: "Order #23124",
              ),
              const SizedBox(height: 20),
              const Text(
                "yesterday, 10:00 am",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Waiting for payment",
                style: TextStyle(
                  color: Color(0xFF9E9E9E),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
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
                        const SizedBox(height: 10),
                        const Text(
                          "Wooden bedside table featuring a \nraised design",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF9E9E9E),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        const SizedBox(height: 20),
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
                              "Order again",
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
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
                        const SizedBox(height: 10),
                        const Text(
                          "Square bedside table with legs, a\nrattan shelf and a...",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF9E9E9E),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        const SizedBox(height: 20),
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
                              "Order again",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "delivery info",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(Icons.car_repair),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "By courier",
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "London, 221B Baker Street",
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "Hanna Gouse, +7 932 123-43-23",
                          style: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TotlePriceScreen(
                total: "total",
                price: "\$420,50",
                code: "Promocode",
                codeprice: "−\$25,00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
