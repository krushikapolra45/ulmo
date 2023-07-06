import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';

import 'search_result_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchResultScreen(),
                  ),
                );
              },
              child: TextFieldScreen(
                icon: Icons.arrow_back,
                name: "|",
                iconTwo: Icons.keyboard_voice_outlined,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Color(0xFF212121),
                    size: 24,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    " wood chair ",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cancel_outlined,
                    color: Color(0xFF9E9E9E),
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Color(0xFF212121),
                    size: 24,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    " dark wood ",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cancel_outlined,
                    color: Color(0xFF9E9E9E),
                    size: 24,
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
