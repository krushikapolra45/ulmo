import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';
import 'package:ulmo/new_review_screen.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  BackButton(
                    color: Color(0xFF212121),
                  ),
                  SizedBox(
                    width: 120,
                  ),
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
                    width: 48,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewReviewScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "new Reviews",
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: "poppins",
                      ),
                    ),
                  ),
                ],
              ),
              const TextFieldScreen(
                icon: Icons.search_rounded,
                name: "search",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/Rating1.png", width: 96, height: 16),
                    const Spacer(),
                    const Text(
                      "Today, 12:30 pm",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/images/avatargirl.png", width: 24, height: 24),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Erin Mango",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Everything is good. Nice quality",
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/images/booktbl.png", width: 54, height: 54),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/locktbl.png", width: 54, height: 54),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/woodtvtbl.png", width: 54, height: 54),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/Rating2.png", width: 96, height: 16),
                    const Spacer(),
                    const Text(
                      "1 month ago",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/images/avatarboys.png", width: 24, height: 24),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Erin MangoCorey Rosser",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Could be better :(",
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/Rating3.png", width: 96, height: 16),
                    const Spacer(),
                    const Text(
                      "2 month ago",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/images/purs.png", width: 24, height: 24),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Paityn Saris",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bought this table 2 months ago and I \nwanted to say, this is the best bedside\n table I’ve ever used 😍,",
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 16,
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
