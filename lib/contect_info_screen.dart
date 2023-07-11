import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const ContactTitleCommon(
                title: "Checkout",
                name: "1 of 3",
              ),
              const Padding(
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
              TextFormField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter name.";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter name",
                ),
              ),
              TextFormField(
                controller: numberController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value != "123456") {
                    return "please enter right number.";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter number",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                    return "please enter right Email";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter email",
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ElevatedCommon(
                  width: 343,
                  hight: 64,
                  elevated: "Continue",
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     if (formKey.currentState!.validate()) {
              //       debugPrint("Is valid");
              //     } else {
              //       debugPrint("Is not valid");
              //     }
              //   },
              //   child: const Text(
              //     "submit",
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
