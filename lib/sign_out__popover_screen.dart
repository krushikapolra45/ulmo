import 'package:flutter/material.dart';
import 'package:ulmo/account_screen.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

class SignOutPopoverScreen extends StatefulWidget {
  const SignOutPopoverScreen({Key? key}) : super(key: key);

  @override
  State<SignOutPopoverScreen> createState() => _SignOutPopoverScreenState();
}

class _SignOutPopoverScreenState extends State<SignOutPopoverScreen> {
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
                height: 312,
                width: 311,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      "are you sure you want\nto sign out?",
                      style: TextStyle(color: Color(0xFF212121), fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We definitely don't want that",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 16,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedCommon(
                        elevated: "No, I want to stay",
                        width: double.infinity,
                        hight: 64,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, right: 17),
                      child: ElevatedButton(
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AccountScreen(),
                              ));
                        },
                        child: const Text(
                          "Yep, sign out",
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
            ),
          ],
        ),
      ),
    );
  }
}
