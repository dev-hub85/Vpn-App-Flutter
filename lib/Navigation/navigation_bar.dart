import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:vpn_basic_project/Screens/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavBar> {
  final PageController controller = PageController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarBubble(
        color: Color.fromARGB(255, 1, 192, 125),
        items: [
          BottomBarItem(
            iconData: Icons.home,
            // label: 'Home',
          ),
          BottomBarItem(
            iconData: Icons.chat,
            // label: 'Chat',
          ),
          BottomBarItem(
            iconData: Icons.notifications,
            // label: 'Notification',
          ),
          BottomBarItem(
            iconData: Icons.calendar_month,
            // label: 'Calendar',
          ),
          BottomBarItem(
            iconData: Icons.settings,
            // label: 'Setting',
          ),
        ],
        onSelect: (index) {
          // implement your select function here
        },
      ),
      body: PageView(
        controller: controller,
        children: const <Widget>[
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          ),
          Center(
            child: Text('Four Page'),
          ),
          Center(
            child: Text('Five Page'),
          ),
        ],
      ),
    );
  }
}
