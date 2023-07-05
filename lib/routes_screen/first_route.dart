import 'package:flutter/material.dart';
import 'package:ulmo/routes_screen/route_name.dart';

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routename.secondtroute);
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.green,
            ),
          ),
        ],
      )),
    );
  }
}
