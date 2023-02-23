import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/Doctorcallscreen.dart';
import 'package:rafeeq/Screens/Doctorsignupscreen.dart';
import 'package:rafeeq/Screens/Doctorsscreen.dart';
import 'package:rafeeq/Screens/Forgetpasswordscreen.dart';
import 'package:rafeeq/Screens/Newpassword.dart';
import 'package:rafeeq/Screens/Sign up.dart';
import 'package:rafeeq/Screens/Splachscreen.dart';
import 'package:rafeeq/Screens/Startscreen.dart';
import 'package:rafeeq/Screens/Verificationscreen.dart';
import 'package:rafeeq/Screens/terms&conditionsscreen.dart';

import 'Screens/Loginscreen.dart';
import 'Screens/Questionsscreen.dart';

void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rafeeq',
      theme: ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      home:   const Splachscreen(

      )
    );
  }

}

