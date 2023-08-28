import 'package:flutter/material.dart';
import 'package:ulmo/address_screen.dart';
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
            const Row(
              children: [
                Icon(Icons.location_on_outlined),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "London, 221B Baker Street",
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        "London, 221B Baker Street",
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.location_on_outlined),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Moscow, Udaltsova 65a",
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        "Jane Smith, +7 912 343-12-54",
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
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
                      builder: (context) => const AddressScreen(),
                    ));
              },
              child: const Text(
                "Add new address",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF212121),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
