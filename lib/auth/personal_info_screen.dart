import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih_2023/Terms%20and%20condition/terms_and_condition.dart';
import 'package:sih_2023/auth/email_screen.dart';

class personalInfoScreen extends StatefulWidget {
  const personalInfoScreen({super.key});

  @override
  State<personalInfoScreen> createState() => _personalInfoScreenState();
}

class _personalInfoScreenState extends State<personalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What's your name?",
                      style: TextStyle(
                          fontFamily: 'UberMoveMedium',
                          fontSize: 23,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Let us know how to properly address you.",
                      style: TextStyle(
                        fontFamily: 'UberMoveLightMedium',
                        fontSize: 17,
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "First name ",
                      style: TextStyle(
                        fontFamily: 'UberMoveMedium',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      cursorHeight: 22,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "Enter first name",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        fillColor: Color.fromARGB(19, 133, 133, 133),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(19, 133, 133, 133),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(19, 133, 133, 133),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(19, 133, 133, 133),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Last name ",
                      style: TextStyle(
                        fontFamily: 'UberMoveMedium',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      cursorHeight: 22,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "Enter last name",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        fillColor: Color.fromARGB(19, 133, 133, 133),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(19, 133, 133, 133),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(19, 133, 133, 133),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(19, 133, 133, 133),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(19, 133, 133, 133),
                          radius: 30,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => emailScreen()));
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TermsAndCondition()));
                          },
                          child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "UberMoveMedium",
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
