import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/sem_detail_common.dart';

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
        child: Column(
          children: [
            const ContactTitleCommon(
              name: "2 of 3",
              title: "checkout",
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
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
            ),
            const SemDetailCommon(
              name: "By courier",
              title: "Tomorrow, any time",
              image: "assets/images_two/car.png",
            ),
            const SemDetailCommon(
              image: "",
              name: "I'll take it myself",
              title: "Any day from tomorrow",
              icon: Icons.shopping_cart_outlined,
            ),
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
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                          ),
                        ),
                        Text(
                          "Hanna Gouse, +7 932 123-43-23",
                          style: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 14,
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
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "Hanna Gouse, +7 932 123-43-23",
                                                style: TextStyle(
                                                  color: Color(0xFF9E9E9E),
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
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "Jane Smith, +7 912 343-12-54",
                                                style: TextStyle(
                                                  color: Color(0xFF9E9E9E),
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
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
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
            ),
          ],
        ),
      ),
    );
  }
}
