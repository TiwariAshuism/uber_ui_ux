import 'package:flutter/material.dart';
import 'package:sih_2023/Splace%20Screen/splace_screen.dart';
import 'package:sih_2023/auth/email_screen.dart';
import 'package:sih_2023/auth/login_screen.dart';
import 'package:sih_2023/auth/personal_info_screen.dart';
import 'package:sih_2023/home%20screen/home_screen.dart';
import 'package:sih_2023/home%20screen/screen01.dart';
import 'package:sih_2023/home%20screen/screen02.dart';
import 'package:sih_2023/home%20screen/screen03.dart';

import 'auth/otp_screen.dart';
import 'on bording screen/on_bording_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen03(),
    );
  }
}
