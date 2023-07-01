import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/no_connection_common.dart';
import 'package:ulmo/common_widget/textfield_common.dart';

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
            TextFieldScreen(
              name: "woodsadwa|",
              icon: Icons.arrow_back,
            ),
            NoConnection(
              image: "assets/images/dissatisfied.png",
              heading: "nothing found, try\nsomething else",
            ),
          ],
        ),
      ),
    );
  }
}
