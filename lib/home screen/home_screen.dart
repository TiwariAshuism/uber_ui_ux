import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
                  height: 150,
                  width: MediaQuery.of(context).size.height * .5,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 228, 254),
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                      color: const Color.fromARGB(255, 232, 232, 232),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ready? Then let's roll.",
                              style: TextStyle(
                                fontFamily: "UberMoveLightRegular",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Ride with Uber",
                                  style: TextStyle(
                                    fontFamily: "UberMOveMedium",
                                    letterSpacing: 0.5,
                                    fontSize: 15,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 19,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              bottomRight: Radius.circular(13),
                            ),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/car_handel.jpg"),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 115,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 232, 232),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/image 3 (no bg).png",
                                  width: 75.677467346191406,
                                  height: 61.578266143798828,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Text(
                                "Ride",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              )
                            ]),
                      ),
                      Container(
                        height: 100,
                        width: 115,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 232, 232),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Image.asset(
                                "assets/images/package.png",
                                width: 55.733299255371094,
                                height: 55.733299255371094,
                                fit: BoxFit.contain,
                              )),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Package",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              )
                            ]),
                      ),
                      Container(
                        height: 100,
                        width: 115,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 232, 232),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/image 5 (no bg).png",
                                width: 61.550350189208984,
                                height: 61.550350189208984,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            const Text(
                              "Rentals",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 232, 232, 232),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Container(
                                  child: Image.asset(
                                    "assets/images/image 6.png",
                                    width: 48.226322174072266,
                                    height: 47.39531326293945,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Reserve",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 232, 232, 232),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Container(
                                  child: Image.asset(
                                    "assets/images/package.png",
                                    width: 48.226322174072266,
                                    height: 47.39531326293945,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Group ride",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 232, 232, 232),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Container(
                                  child: Image.asset(
                                    "assets/images/image 5 (no bg).png",
                                    width: 48.226322174072266,
                                    height: 47.39531326293945,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Intercity",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 232, 232, 232),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Container(
                                  child: Image.asset(
                                    "assets/images/image 10.png",
                                    width: 48.226322174072266,
                                    height: 47.39531326293945,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Travel",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  height: 60,
                  width: MediaQuery.of(context).size.height * .5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 232, 232, 232),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const SizedBox(
                              height: 30,
                              child: Image(
                                image: AssetImage("assets/images/search.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Where to?",
                              style: TextStyle(
                                  fontFamily: "UberMoveLightMedium",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color.fromARGB(160, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 3,
                              color: const Color.fromARGB(255, 226, 226, 226),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 10),
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 5),
                                      child: Icon(
                                        Icons.access_time_filled_rounded,
                                        size: 25,
                                      ),
                                    ),
                                    const Text(
                                      "Now",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
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
                                    Icons.star,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 15),
                                const Text(
                                  "Choose a saved place",
                                  style: TextStyle(
                                    fontFamily: " UberMoveLightRegular",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black45,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 10),
                  child: Divider(
                      thickness: 1.5, color: Color.fromARGB(15, 0, 0, 0)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
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
                                    Icons.location_pin,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 15),
                                const Text(
                                  "Set destination on map",
                                  style: TextStyle(
                                    fontFamily: " UberMoveLightRegular",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black45,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 10),
                  child: Divider(
                      thickness: 1.5, color: Color.fromARGB(15, 0, 0, 0)),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
            color: Color.fromARGB(15, 0, 0, 0),
            width: 2,
          ))),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: BottomNavigationBar(
                elevation: 0,
                selectedItemColor: Colors.black,
                backgroundColor: Colors.white,
                currentIndex: _currentIndex,
                onTap: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.list_alt_rounded),
                    label: 'Activity',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Account',
                  )
                ]),
          ),
        ));
  }
}
