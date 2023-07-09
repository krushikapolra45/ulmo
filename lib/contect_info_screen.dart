import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_details_common.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ContactTitleCommon(
              title: "Checkout",
              name: "1 of 3",
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "contact info",
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ContactDetailsCommon(
              name: "Full name",
              detail: "Hanna Gouse",
            ),
            ContactDetailsCommon(
              name: "Full name",
              detail: "Hanna Gouse",
            ),
            ContactDetailsCommon(
              name: "Full name",
              detail: "Hanna Gouse",
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: ElevatedCommon(
                width: 343,
                hight: 64,
                elevated: "Continue",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
