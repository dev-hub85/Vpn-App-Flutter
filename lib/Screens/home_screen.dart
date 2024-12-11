import 'package:flutter/material.dart';
import 'package:vpn_basic_project/Widgets/button.dart';
import 'package:vpn_basic_project/Widgets/count_down_timer.dart';
import 'package:vpn_basic_project/Widgets/speed_analysis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'AbdulRehman!',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue.withOpacity(0.1),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Color.fromARGB(255, 1, 192, 125),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color.fromARGB(255, 1, 192,
                                    125), // Set your desired border color here
                                width: 2, // Set the border width here
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Change Location',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 1, 192, 125),
                                    ),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue.withOpacity(0.1),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Color.fromARGB(255, 1, 192, 125),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Canada',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 192, 125),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CountDownTimer(startTimer: false)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.75,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 192, 125),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 1, 224, 146),
                      Color.fromARGB(255, 0, 206, 134),
                      Color.fromARGB(255, 1, 192, 125),
                    ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VpnButton(),
                SizedBox(height: 50,),
                SpeedAnalyser()
              ],
            ),
          ),
        )
      ],
    );
  }
}
