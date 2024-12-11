import 'package:flutter/material.dart';

class VpnButton extends StatefulWidget {
  const VpnButton({super.key});

  @override
  State<VpnButton> createState() => _VpnButtonState();
}

class _VpnButtonState extends State<VpnButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: Color.fromARGB(255, 170, 243, 217).withOpacity(0.7),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: Color.fromARGB(255, 100, 221, 179),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromARGB(255, 1, 192, 125),
          ),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.power_settings_new_rounded,
                  size: 50,
                  weight: 100,
                  color: Color.fromARGB(255, 1, 192, 125),
                ),
                const Text(
                  'Connected',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 192, 125),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
