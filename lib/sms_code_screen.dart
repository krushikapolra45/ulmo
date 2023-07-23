import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ulmo/common_widget/big_hedding_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

class SmsCodeScreen extends StatefulWidget {
  final String? phoneNumber;

  const SmsCodeScreen({Key? key, this.phoneNumber}) : super(key: key);

  @override
  State<SmsCodeScreen> createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigHeddingScreen(
              name: "help",
              hedding: "welcome!\nenter code from sms",
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "We sent it to +7 912 323-32-12",
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16, fontFamily: "Poppins,"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 50,
                      ),
                      child: PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: const TextStyle(
                          color: Color(0xFFE0E0E0),
                          fontWeight: FontWeight.bold,
                        ),
                        length: 5,
                        obscureText: true,
                        obscuringCharacter: '*',
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 3) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: const Color(0xFFF5F5F5),
                          inactiveFillColor: const Color(0xFFF5F5F5),
                          inactiveColor: const Color(0xFFF5F5F5),
                          activeColor: const Color(0xFFF5F5F5),
                          selectedColor: const Color(0xFFE0E0E0),
                          selectedFillColor: const Color(0xFFF5F5F5),
                        ),
                        cursorColor: Colors.black,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        keyboardType: TextInputType.number,
                        onCompleted: (v) {
                          debugPrint("Completed");
                        },
                        onChanged: (value) {
                          debugPrint(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          debugPrint("Allowing to paste $text");

                          return true;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      hasError ? "*Please fill up all the cells properly" : "",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedCommon(
                    elevated: "new code 0:20",
                    hight: 64,
                    width: double.infinity,
                    onPress: () {
                      formKey.currentState!.validate();
                      // conditions for validating
                      if (currentText.length != 5 || currentText != "12345") {
                        errorController!.add(ErrorAnimationType.shake); // Triggering error shake animation
                        setState(() => hasError = true);

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const ProfileSetupScreen()),
                        // );
                      } else {
                        setState(
                          () {
                            hasError = false;
                            snackBar("OTP Verified!!");
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
