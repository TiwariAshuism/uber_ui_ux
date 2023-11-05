import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih_2023/home%20screen/home_screen.dart';
import 'package:sih_2023/intro%20final%20screen/welcome_screen.dart';

class NotificationPermissionScreen extends StatefulWidget {
  const NotificationPermissionScreen({super.key});

  @override
  State<NotificationPermissionScreen> createState() =>
      _NotificationPermissionScreenState();
}

class _NotificationPermissionScreenState
    extends State<NotificationPermissionScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      height: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/notification.png"))),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 79,
                        ),
                        Text(
                          "Ride easy with real-time trip\nupdates",
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: "UberMoveLightMedium",
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                            "Allow Uber push notification to receive trip status,\ndrive updates, and promotional offers. You can \nchnage this in Setting at any time",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'UberMoveLightRegular',
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.only(right: 30, left: 30),
                        color: Colors.black,
                        height: 60,
                        child: Stack(
                          children: [
                            Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'UberMoveBold'),
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ))
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
