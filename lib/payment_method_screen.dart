import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/payment_common.dart';

import 'success_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "payment method",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const PaymentCommon(
                image: "assets/images_two/shape.png",
                name: "Mastercard 9833",
                text: "734, Exp: 12/29",
              ),
              const PaymentCommon(
                image: "assets/images_two/visa.png",
                name: "Visa 7233",
                text: "321, Exp: 11/29",
              ),
              const PaymentCommon(
                image: "assets/images_two/applelogo.png",
                name: "Apple pay",
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ElevatedCommon(
                  width: double.infinity,
                  elevated: "Pay \$420,50",
                  hight: 64,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SuccessScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
