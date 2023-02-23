 import 'package:flutter/material.dart';
 import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Doctorinfoscreen.dart';
import 'package:rafeeq/Screens/Startscreen.dart';

 class Splachscreen extends StatelessWidget {
   const Splachscreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
             elevation: 0,
             title: const Text('Rafeeq'),
             backgroundColor:const Color(0xffff645b),
           ),
           body: SafeArea(
             child: Center(
               child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     const Image(
                       image: AssetImage('images/180.png'),
                     ),
                     Container(
                       child: const Text(
                         'مرحباً بك في عائلتنا',
                         style: TextStyle(
                             fontSize: 35,
                             fontWeight: FontWeight.bold,
                             color: Colors.black),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(20),
                       child: MyButton(txt: 'دعنا نبدا', Onclick: (){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>Startscreen()
                       )
                       );
                       }),
                     )
                   ]),
             ),
           )
       ),

     );
   }
 }
