import 'package:flutter/material.dart';
import 'package:ulmo/routes_screen/route_name.dart';

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routename.initialRoute);
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.red,
            ),
          ),
        ],
      )),
    );
  }
}
