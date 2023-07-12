import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/sem_detail_common.dart';

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
              ContactTitleCommon(
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
              SizedBox(height: 15),
              SemDetailCommon(
                name: "Mastercard 9833",
                title: "734, Exp: 12/29",
                image: "assets/images_two/shape.png",
              ),
              SemDetailCommon(
                name: "Visa 7233",
                title: "321, Exp: 11/29",
                image: "assets/images_two/visa.png",
              ),
              SemDetailCommon(
                name: "Apple pay",
                image: "assets/images_two/applelogo.png",
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedCommon(
                    width: double.infinity,
                    elevated: "Pay \$420,50",
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
