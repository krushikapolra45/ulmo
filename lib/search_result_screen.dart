import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/textfield_common.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldScreen(
                icon: Icons.arrow_back,
                name: "wood|",
                iconTwo: Icons.cancel_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " wood chair ",
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "living room / furniture",
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      " wood table",
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "living room / furniture",
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
