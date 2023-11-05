import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen02 extends StatefulWidget {
  const screen02({super.key});

  @override
  State<screen02> createState() => _screen02State();
}

class _screen02State extends State<screen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 232, 232),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Past",
                              style: TextStyle(
                                  fontFamily: " UberMoveLightRegular",
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "Choose a trip",
                  style: TextStyle(
                    fontFamily: " UberMoveLightRegular",
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You haven't taken a trip yet.",
                            style: TextStyle(
                                fontFamily: " UberMoveLightRegular",
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black45),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                                child: Text(
                              "Retry",
                              style: TextStyle(
                                fontFamily: " UberMoveLightRegular",
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
