import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen01 extends StatefulWidget {
  const screen01({super.key});

  @override
  State<screen01> createState() => _screen01State();
}

class _screen01State extends State<screen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Choose a destination",
                      style: TextStyle(
                        fontFamily: " UberMoveLightRegular",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 232, 232, 232),
                                child: Icon(
                                  Icons.home,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                              SizedBox(width: 15),
                              const Text(
                                "Add Home",
                                style: TextStyle(
                                  fontFamily: " UberMoveLightRegular",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child:
                    Divider(thickness: 1.5, color: Color.fromARGB(15, 0, 0, 0)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 232, 232, 232),
                                child: Icon(
                                  Icons.work_sharp,
                                  color: Colors.black,
                                  size: 17,
                                ),
                              ),
                              SizedBox(width: 15),
                              const Text(
                                "Add Work",
                                style: TextStyle(
                                  fontFamily: " UberMoveLightRegular",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child:
                    Divider(thickness: 1.5, color: Color.fromARGB(15, 0, 0, 0)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 232, 232, 232),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              SizedBox(width: 15),
                              const Text(
                                "Add a new place",
                                style: TextStyle(
                                  fontFamily: " UberMoveLightRegular",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child:
                    Divider(thickness: 1.5, color: Color.fromARGB(15, 0, 0, 0)),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
