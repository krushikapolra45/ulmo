import 'package:flutter/material.dart';

import 'route_name.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routename.thirdroute);
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ],
      )),
    );
  }
}
