import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Welcome to",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontFamily: "UberMoveMedium")),
                      TextSpan(
                          text: "\nUber",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontFamily: "UberMoveMedium")),
                    ],
                  ),
                ),
                Text("\nCustomizing your experience...",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "UberMoveLightMedium")),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/arrow.png")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
