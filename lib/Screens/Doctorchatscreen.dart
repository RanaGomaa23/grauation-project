import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/homewithdocscreen.dart';

class Doctorchatscreen extends StatelessWidget {
  const Doctorchatscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homewithdocscreen()));
            },
          ),
        ),
      ),
    );
  }
}
