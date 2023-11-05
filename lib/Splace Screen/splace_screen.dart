import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_2023/on%20bording%20screen/on_bording_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

const AnimatedColorText = [
  Colors.white,
  Colors.black,
];

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                ColorizeAnimatedText(
                  'Uber',
                  speed: Duration(milliseconds: 200),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'UberMoveMedium',
                    fontSize: 60,
                  ),
                  colors: AnimatedColorText,
                )
              ]),
              // Text('Uber',
              // style: TextStyle(
              //   color: Colors.white,
              //   fontFamily: 'UberMoveMedium',
              //   fontSize: 60,
              // )),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
