import 'package:flutter/material.dart';

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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF5F5F5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        BackButton(
                          color: Color(0xFF212121),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "|",
                          style: TextStyle(color: Color(0xFF212121), fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_voice_outlined, color: Color(0xFF212121), size: 20),
                      ],
                    ),
                  ),
                ),
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
                      fontFamily: "Poppins",
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
                      fontFamily: "Poppins",
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
