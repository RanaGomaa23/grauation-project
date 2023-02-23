 import 'package:flutter/material.dart';
 import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Doclogin_screen.dart';
import 'package:rafeeq/Screens/Doctorsignupscreen.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';
import 'package:rafeeq/Screens/Splachscreen.dart';

 class Startscreen extends StatelessWidget {
  const Startscreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Colors.white,
         appBar: AppBar(
           elevation: 0,
           backgroundColor: Colors.white,
           leading: IconButton(icon: Icon(Icons.chevron_left,
           size: 30,color: Colors.black,
           )
             , onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Splachscreen()));
           },),
         ),
          body: SafeArea(
       child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 100),
               child: Image(image: AssetImage('images/180.png')),
           ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MyButton(
                      txt: ' تسجيل الدخول ',
                      Onclick: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                      },
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MyButton(
                    txt: 'تسجيل الدخول كطبيب',
                    Onclick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Docloginscreen()));
                    } ,
                  ),
                ),
              ],
            ),

           ],
         ),
       )),
     );
   }
 }
