import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';
import 'package:ulmo/order_screen.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TitleScreen(
                name: "My orders",
              ),
              const TextFieldScreen(
                icon: Icons.search_rounded,
                name: "search",
              ),
              const SizedBox(height: 10),
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OrderScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Yesterday, 10:00 am",
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$450.50",
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Waiting for payment",
                            style: TextStyle(
                              color: Color(0xFF9E9E9E),
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Spacer(),
                          Text(
                            "#23124",
                            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/woodtblroom.png",
                            width: 60,
                            height: 73,
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            "assets/images/squretable.png",
                            width: 60,
                            height: 73,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Text("December 25",
                              style: TextStyle(
                                color: Color(0xFF212121),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                              )),
                          Spacer(),
                          Text(
                            "\$450.00",
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Delivered",
                            style: TextStyle(
                              color: Color(0xFF66BB6A),
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Spacer(),
                          Text(
                            "#14124",
                            style: TextStyle(
                              color: Color(0xFF9E9E9E),
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/goldwoodchair.png",
                            width: 60,
                            height: 73,
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            "assets/images/welvetcunjo.png",
                            width: 60,
                            height: 73,
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            "assets/images/blackjug.png",
                            width: 60,
                            height: 73,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
