import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/no_connection_common.dart';

class NothingFoundScreen extends StatefulWidget {
  const NothingFoundScreen({Key? key}) : super(key: key);

  @override
  State<NothingFoundScreen> createState() => _NothingFoundScreenState();
}

class _NothingFoundScreenState extends State<NothingFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isDense: true,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Color(0xFF212121),
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "woodsadwa|",
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.cancel_outlined,
                            color: Color(0xFF212121),
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const NoConnection(
              image: "assets/images/dissatisfied.png",
              heading: "nothing found, try \nsomething else",
            ),
          ],
        ),
      ),
    );
  }
}
