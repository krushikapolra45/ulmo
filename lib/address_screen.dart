import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "Address",
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "contact info",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color(0xFF212121),
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
              padding: const EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Address info",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
            ),
            Row(
              children: [Column()],
            )
          ],
        ),
      ),
    );
  }
}
