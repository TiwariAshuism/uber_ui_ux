import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sih_2023/auth/otp_screen.dart';

import '../on bording screen/on_bording_screen.dart';

class phoneNumberRegistration extends StatefulWidget {
  const phoneNumberRegistration({super.key});

  @override
  State<phoneNumberRegistration> createState() =>
      _phoneNumberRegistrationState();
}


class _phoneNumberRegistrationState extends State<phoneNumberRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
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
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .30,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 133, 133, 133),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/india.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(19, 133, 133, 133),
                          filled: true,
                          hintText: "Mobile number",
                          hintStyle: TextStyle(
                            color: Colors.black38,
                          ),
                          prefixText: "+91 ",
                          prefixStyle: TextStyle(
                            color: Colors.black,
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => otpScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 60,
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'UberMoveMedium'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "or",
                    style: TextStyle(
                      color: Colors.black26,
                      fontFamily: 'UberMoveMedium',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.black12,
                    height: 20,
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(19, 114, 114, 114),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/apple.png"))),
                      ),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'UberMoveMedium'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(19, 133, 133, 133),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/facebook.png"))),
                      ),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'UberMoveMedium'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(19, 133, 133, 133),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/google.png"))),
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'UberMoveMedium'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "or",
                    style: TextStyle(
                      color: Colors.black26,
                      fontFamily: 'UberMoveMedium',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.black12,
                    height: 20,
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    height: 18,
                    width: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/search.png"))),
                  ),
                  Text(
                    "Find my account",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "UberMoveMedium",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "By proceeding, you conset to get calls, WhatsApp or SMS message, including by automated dailer, from Uber and its affiliates to the number provide. Text 'STOP' to 89203 to opt out.",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 50),
              CircleAvatar(
                backgroundColor: Color.fromARGB(19, 133, 133, 133),
                radius: 30,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnBoardingScreen()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text:
                          "This side is protected by reCAPTCHA and the Google ",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " apply.",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
