import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryDetailsScreen> createState() => _DeliveryDetailsScreenState();
}

class _DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ContactTitleCommon(
              name: "checkout",
              title: "2 of 3",
            )
          ],
        ),
      ),
    );
  }
}
