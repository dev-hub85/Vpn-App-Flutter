import 'package:flutter/material.dart';
import 'package:vpn_basic_project/Screens/splash_screen.dart';
import 'package:vpn_basic_project/Navigation/navigation_bar.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

