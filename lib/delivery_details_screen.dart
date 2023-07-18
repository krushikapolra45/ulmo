import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/calander_common.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

import 'payment_method_screen.dart';

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryDetailsScreen> createState() => _DeliveryDetailsScreenState();
}

class _DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ContactTitleCommon(
                name: "2 of 3",
                title: "checkout",
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "delivery method",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(Icons.car_repair_outlined),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "By courier",
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "Tomorrow, any time",
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
              const Row(
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "I'll take it myself",
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "Any day from tomorrow",
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "delivery Address",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  const Padding(
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
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        barrierColor: Colors.black,
                        shape: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "delivery address",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF212121),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on_outlined),
                                        const Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "London, 221B Baker Street",
                                                style: TextStyle(
                                                  color: Color(0xFF212121),
                                                  fontSize: 16,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "Hanna Gouse, +7 932 123-43-23",
                                                style: TextStyle(
                                                  color: Color(0xFF9E9E9E),
                                                  fontFamily: "Poppins",
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Checkbox(
                                          value: checkBoxValue,
                                          checkColor: const Color(0xFF212121),
                                          activeColor: const Color(0xFFFEE440),
                                          shape: const CircleBorder(),
                                          onChanged: (value) {
                                            debugPrint("value---> $value");
                                            setState(() {
                                              checkBoxValue = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on_outlined),
                                        const Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Moscow, Udaltsova 65a",
                                                style: TextStyle(
                                                  color: Color(0xFF212121),
                                                  fontSize: 16,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "Jane Smith, +7 912 343-12-54",
                                                style: TextStyle(
                                                  color: Color(0xFF9E9E9E),
                                                  fontFamily: "Poppins",
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Checkbox(
                                          value: checkBoxValue,
                                          checkColor: const Color(0xFF212121),
                                          activeColor: const Color(0xFFFEE440),
                                          shape: const CircleBorder(),
                                          onChanged: (value) {
                                            debugPrint("value---> $value");
                                            setState(() {
                                              checkBoxValue = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 343,
                                        height: 64,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF5F5F5),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Text(
                                          textAlign: TextAlign.center,
                                          "cancel",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            color: Color(0xFF212121),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF212121),
                      size: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "delivery time",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "Tommorrow",
                        style: TextStyle(color: Color(0xFF212121), fontSize: 15),
                      ),
                    ),
                    const CalanderCommon(
                      date: " Jun  25 ",
                    ),
                    const CalanderCommon(
                      date: " Jun  26 ",
                    ),
                    const CalanderCommon(
                      date: " Jun  27 ",
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        " 12:00 pm ",
                        style: TextStyle(color: Color(0xFF212121), fontSize: 15),
                      ),
                    ),
                    const CalanderCommon(
                      date: " 2:00 pm ",
                    ),
                    const CalanderCommon(
                      date: " 4:00 pm ",
                    ),
                    const CalanderCommon(
                      date: " 6:00 pm ",
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentMethodScreen(),
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: ElevatedCommon(
                    width: 343,
                    elevated: "continue",
                    hight: 64,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
