import 'package:flutter/material.dart';
import 'package:ulmo/bottom_navigation_bar_screen.dart';

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

      theme: ThemeData(fontFamily: "Poppins"
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          // useMaterial3: false,
          ),
      // initialRoute: Routename.initialRoute,
      // routes: AppRoute().approutes,

      home: const BottomNavigationBarScreen(),
    );
  }
}
