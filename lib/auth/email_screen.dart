import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih_2023/auth/otp_screen.dart';
import 'package:sih_2023/auth/personal_info_screen.dart';

class emailScreen extends StatefulWidget {
  const emailScreen({super.key});

  @override
  State<emailScreen> createState() => _emailScreenState();
}

class _emailScreenState extends State<emailScreen> {
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
                      "Enter your mobile number",
                      style: TextStyle(
                          fontFamily: 'UberMoveMedium',
                          fontSize: 23,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add your email to aid in account recovery.",
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
                      "Email",
                      style: TextStyle(
                        fontFamily: 'UberMoveMedium',
                        fontSize: 21,
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
                        hintText: "name@example.com",
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
                                      builder: (context) => otpScreen()));
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
                                    builder: (context) =>
                                        personalInfoScreen()));
                          },
                          child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(19, 133, 133, 133),
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
                                        color: Colors.black38,
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
                                      color: Colors.black45,
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
