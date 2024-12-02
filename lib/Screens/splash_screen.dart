import 'package:flutter/material.dart';
import 'package:vpn_basic_project/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: width * 0.04,
              child: Image.asset(
                'assets/images/bars2.png',
                width: 200,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ), // Adding space between logo and text
                  Text(
                    'SafeNet',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 192, 125),
                      decoration: TextDecoration.none,
                    ), // Styling text
                  ),
                ],
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: width * 0.4,
              child: Image.asset(
                'assets/images/bars.png',
                width: 200,
              )),
        ],
      ),
    );
  }
}
