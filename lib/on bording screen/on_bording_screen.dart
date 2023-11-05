import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih_2023/auth/login_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler/permission_handler.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
          child: Column(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Uber",
                        style: TextStyle(
                            fontSize: 37,
                            color: Colors.white,
                            fontFamily: 'UberMoveMedium'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .68,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/move_with_safety.png"),
                      fit: BoxFit.contain,
                    )),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            child: Text(
                              "Move with safety",
                              style: TextStyle(
                                  fontSize: 37,
                                  color: Colors.white,
                                  fontFamily: 'UberMoveMedium'),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    color: Colors.black,
                    height: 60,
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () async {
                            PermissionStatus locationPermission =
                                await Permission.locationAlways.request();
                            if (locationPermission == PermissionStatus.denied) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          phoneNumberRegistration()));
                            }
                          },
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'UberMoveBold'),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              child: InkWell(
                                onTap: () async {
                                  PermissionStatus locationPermission =
                                      await Permission.locationAlways.request();
                                  if (locationPermission ==
                                      PermissionStatus.denied) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                phoneNumberRegistration()));
                                  }
                                },
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ))
                      ],
                    )),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
