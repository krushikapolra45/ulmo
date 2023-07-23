import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ulmo/account_screen.dart';

import 'common_widget/elevated_common.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text(
                          "Set up your profile",
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 80),
                      Text(
                        "Skip",
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 60,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        GestureDetector(
                          onTap: () => pickProfileImage(),
                          child: Container(
                            height: 56,
                            width: 56,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFEEEEEE)),
                            ),
                            child: image != null
                                ? Image.file(
                                    File(image!.path),
                                    fit: BoxFit.cover,
                                  )
                                : const Icon(
                                    Icons.camera_alt_sharp,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Upload photo",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontFamily: "Poppins",
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
                          hintStyle: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
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
                          if (!RegExp(r"(?:19|20)\d\d").hasMatch(value!)) {
                            return "Please enter valid birthdate";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "date of birth",
                          filled: true,
                          fillColor: Color(0xFFF5F5F5),
                          hintStyle: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ElevatedCommon(
                    width: double.infinity,
                    hight: 64,
                    elevated: "continue",
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        debugPrint("is valid");

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AccountScreen()),
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
        ],
      ),
    );
  }

  pickProfileImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    debugPrint(image!.path);
    debugPrint(image!.name);

    var data = await image!.readAsBytes();
    debugPrint(data.toString());

    setState(() {});
  }
}
