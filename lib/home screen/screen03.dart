import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen03 extends StatefulWidget {
  const screen03({super.key});

  @override
  State<screen03> createState() => _screen03State();
}

class _screen03State extends State<screen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              Text("Wallet"),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.height * 2,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Uber Cash"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0.00"),
                        Icon(Icons.keyboard_arrow_right_sharp)
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Gift card",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 230,
                width: MediaQuery.of(context).size.height * 2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "You can now send an\n instant gift card for\n use on Uber"),
                        Container(
                          height: 50,
                          width: 80,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Text(
                        "You can now send an instant gift\n card, for use on Uber or Uber Eats"),
                    Container(
                      height: 40,
                      width: 100,
                      color: const Color.fromARGB(255, 232, 232, 232),
                      child: Center(
                        child: Text(
                          "Sends a gift",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text("Payment methods"),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 40,
                    color: Colors.amber,
                  ),
                  Text("Cash"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.amber,
                child: Text("Add payment method"),
              ),
              Text("Ride Profiles"),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text("Personal"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 232, 232, 232),
                    radius: 25,
                    child: Icon(
                      Icons.work_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Start using Uber for business"),
                      Text("Turn on business travel features")
                    ],
                  ),
                ],
              ),
              Text("Vouchers"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.amber,
                      ),
                      Text("vouchers"),
                    ],
                  ),
                  Text("0")
                ],
              ),
              Divider(),
              Row(
                children: [Icon(Icons.add), Text("Add voucher code")],
              ),
              Text("Promotions"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.amber,
                      ),
                      Text("Promotions"),
                    ],
                  ),
                  Text("7")
                ],
              ),
              Divider(),
              Row(
                children: [Icon(Icons.add), Text("Add Promo code")],
              )
            ],
          ),
        ),
      )),
    );
  }
}
