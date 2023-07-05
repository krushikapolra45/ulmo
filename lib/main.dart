import 'package:flutter/material.dart';

import 'routes_screen/app_route.dart';
import 'routes_screen/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          // useMaterial3: false,
          ),
      initialRoute: Routename.initialRoute,
      routes: AppRoute().approutes,
      // home: const FirstRoute(),
    );
  }
}
