import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/contect_title_common.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/delivery_details_screen.dart';

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
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (!RegExp(r"^[a-z0-9]").hasMatch(value!)) {
                        return "Please enter  fullName";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: "full Name",
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                      hintStyle: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "sf-pro-display-cufonfonts"),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (!RegExp(r"^(?:[+0]9)?[0-9]{10,12}$").hasMatch(value!)) {
                        return "Please enter valid number";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: "phone",
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                      hintStyle: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "sf-pro-display-cufonfonts"),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: "Email",
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                      hintStyle: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "sf-pro-display-cufonfonts"),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              ElevatedCommon(
                width: 343,
                hight: 64,
                elevated: "continue",
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    debugPrint("is valid");

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DeliveryDetailsScreen()),
                    );
                  } else {
                    debugPrint("is not valid");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
