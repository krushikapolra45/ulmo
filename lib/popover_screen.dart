import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

class PopoverScreen extends StatefulWidget {
  const PopoverScreen({Key? key}) : super(key: key);

  @override
  State<PopoverScreen> createState() => _PopoverScreenState();
}

class _PopoverScreenState extends State<PopoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Container(
                height: 500,
                width: 311,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/bedroom.png",
                      height: 180,
                      width: 279,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      textAlign: TextAlign.center,
                      "subscribe to our \n newsletter",
                      style: TextStyle(color: Color(0xFF212121), fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Only useful content no ad",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 16,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedCommon(
                        elevated: "Subscribe",
                        width: double.infinity,
                        hight: 64,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 64,
                        width: 343,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFFF5F5F5),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Maybe later",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
