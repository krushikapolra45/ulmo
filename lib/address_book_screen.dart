import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/sem_detail_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class AddressBookScreen extends StatefulWidget {
  const AddressBookScreen({Key? key}) : super(key: key);

  @override
  State<AddressBookScreen> createState() => _AddressBookScreenState();
}

class _AddressBookScreenState extends State<AddressBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: " address book",
            ),
            const SemDetailCommon(
              icon: Icons.pin_drop_outlined,
              name: "London, 221B Baker Street",
              title: "Hanna Gouse, +7 932 123-43-23",
            ),
            // SizedBox(height: 10),
            // SemDetailCommon(
            //   icon: Icons.pin_drop_outlined,
            //   name: "Moscow, Udaltsova 65a",
            //   title: "Jane Smith, +7 912 343-12-54",
            // ),
            Container(
              height: 64,
              width: 343,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "add new address",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
