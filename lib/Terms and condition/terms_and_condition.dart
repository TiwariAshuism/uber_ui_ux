import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih_2023/auth/personal_info_screen.dart';
import 'package:sih_2023/payment/select_payment_method.dart';


class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color color(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.black;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/term_and_condition.png"),
                            ),
                          ),
                        ),
                        Text(
                          "Accept Uber's Terms \n& Review Privacy \nNotice",
                          style: TextStyle(
                            fontSize: 27,
                            fontFamily: 'UberMoveLightRegular',
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'By selecting "I Agree" below, I have reviewed and',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'UberMoveLightRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "\nagree to the",
                              style: TextStyle(
                                height: 1.3,
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'UberMoveLightRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: " Terms of Use ",
                              style: TextStyle(
                                height: 1.3,
                                color: Colors.blue.shade600,
                                fontSize: 15,
                                fontFamily: 'UberMoveLightRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "and acknowledge the",
                              style: TextStyle(
                                height: 1.3,
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'UberMoveLightRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "\nPrivacy Notice. ",
                              style: TextStyle(
                                height: 1.3,
                                color: Colors.blue.shade600,
                                fontSize: 15,
                                fontFamily: 'UberMoveLightRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "I am at least 18 years of age.",
                              style: TextStyle(
                                height: 1.3,
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'UberMoveLightRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "I Agree",
                              style: TextStyle(
                                  fontFamily: 'UberMoveLightMedium',
                                  fontWeight: FontWeight.w400),
                            ),
                            Checkbox(
                                fillColor:
                                    MaterialStateProperty.resolveWith(color),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                })
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(19, 133, 133, 133),
                              radius: 30,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              personalInfoScreen()));
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
                                            TermsAndCondition()));
                              },
                              child: InkWell(
                                onTap: () {
                                  if (isChecked == true) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MethodType()));
                                  }
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
                              ),
                            )
                          ],
                        ),
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
