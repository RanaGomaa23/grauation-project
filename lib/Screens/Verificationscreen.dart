

import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/Forgetpasswordscreen.dart';
import 'package:rafeeq/Screens/Newpassword.dart';

import '../Buttons/ElevatedButton.dart';

class Verificationscreen extends StatelessWidget {
  const Verificationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon:const Icon(
            Icons.chevron_left,
            size: 20,
            color: Colors.black,
          ), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpasswordscreen()));
          },),
          title: const Center(
            child: Text('التحقق من البريد الإلكتروني',
            style: TextStyle(fontSize: 20 , color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body:
         SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(25),
             child: Column(
               children:  [
                 const Center(child: Image(image: AssetImage('images/bubble-gum-envelope-with-checkmark-icon.png'),
                 height: 200,
                   width: 200,
                 )),
                 const SizedBox(
                   height: 10,
                 ),
                 Container(child: const Text(' أدخل الرمز المكون من أربعة أرقام المرسل ',
                 style: TextStyle(fontSize: 20 , color: Colors.black),
                 )),
                 Container(child: const Text(' إالي البريد الإلكتروني ',
                     style: TextStyle(fontSize: 20 , color: Colors.black
                 ))

                 ),
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                   child: TextField(

                     textAlign: TextAlign.end,
                     decoration: InputDecoration(border: OutlineInputBorder()),
                     keyboardType: TextInputType.phone,
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: MyButton(txt: 'تحقق', Onclick: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Newpassword()));
                   } ),
                 ),
                 TextButton(
                   onPressed: () {
                     print('تم إرسال الكود');
                   },
                   child: const Text('إعادة إرسال الكود',
                       style: TextStyle(fontSize: 18, color: Colors.black)),
                 ),
               ],
             ),
           ),
         )
        ,

      ),
    );
  }
}
