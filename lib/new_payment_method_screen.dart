import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/payment_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class NewPaymentMethodScreen extends StatefulWidget {
  const NewPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<NewPaymentMethodScreen> createState() => _NewPaymentMethodScreenState();
}

class _NewPaymentMethodScreenState extends State<NewPaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: "Payment methods",
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: PaymentCommon(
                image: "assets/images_two/shape.png",
                name: "Mastercard 9833",
                text: "734, Exp: 12/29",
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: PaymentCommon(
                image: "assets/images_two/visa.png",
                name: "Visa 7233",
                text: "321, Exp: 11/29",
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color(0xFFF5F5F5),
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(343, 64),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
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
                              const Icon(
                                Icons.close,
                                color: Color(0xFF212121),
                                size: 24,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "new card",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Color(0xFF212121),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(20),
                                      isDense: true,
                                      border: InputBorder.none,
                                      filled: true,
                                      hintText: "House number",
                                      fillColor: Color(0xFFF5F5F5),
                                      suffixIcon: Padding(
                                        padding: EdgeInsets.all(8.0),
                                      ),
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
              child: const Text(
                "Add new payment method",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF212121),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
