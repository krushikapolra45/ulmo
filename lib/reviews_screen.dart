import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BackButton(
                    color: Color(0xFF212121),
                  ),
                  Spacer(),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "new Reviews",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontFamily: "poppins",
                    ),
                  ),
                ],
              ),
            ),
            TextFieldScreen(
              name: "search",
            ),
          ],
        ),
      ),
    );
  }
}
