import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih_2023/intro%20final%20screen/notification_screen.dart';
import 'package:sih_2023/payment/add_card_screen.dart';

class MethodType extends StatefulWidget {
  const MethodType({super.key});

  @override
  State<MethodType> createState() => _MethodTypeState();
}

class _MethodTypeState extends State<MethodType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationPermissionScreen(),
                      ),
                    );
                  },
                  child: Container(
                    child: Text(
                      "Do this later",
                      style: TextStyle(
                        fontFamily: "UberMOveLightMedium",
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Select your preferred \npayment method",
              style: TextStyle(
                  fontFamily: 'UberMoveMedium',
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/paypal.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: Text(
                      "PayPal",
                      style: TextStyle(
                        fontFamily: "UberMoveMedium",
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Align(
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black26,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.height * .50,
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/card.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: Text(
                      "Credit or Debit Card",
                      style: TextStyle(
                        fontFamily: "UberMoveMedium",
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCardScreen()));
                    },
                    child: Align(
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black26,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
