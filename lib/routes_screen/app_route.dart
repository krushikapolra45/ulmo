import 'package:flutter/material.dart';
import 'package:ulmo/routes_screen/route_name.dart';
import 'package:ulmo/routes_screen/second_route.dart';
import 'package:ulmo/routes_screen/third_route.dart';

import 'first_route.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> approutes = {
    Routename.initialRoute: (context) => const FirstRoute(),
    Routename.secondtroute: (context) => const SecondRoute(),
    Routename.thirdroute: (context) => const ThirdRoute(),
  };
}
