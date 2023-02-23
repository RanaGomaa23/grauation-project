

import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';
import 'package:rafeeq/Screens/Newpassword.dart';
import 'package:rafeeq/Screens/Verificationscreen.dart';

class Forgetpasswordscreen extends StatelessWidget {
  const Forgetpasswordscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black,
            ),

            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
            },
          ),

          title:  const Center(
            child: Text(
              'نسيت الرقم السري',
              style: TextStyle(fontSize: 25 , color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white,
        ),
          body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(child: Image(image: AssetImage('images/bubble-gum-one-time-password-on-the-phone.png'),)),
                Container(
                  child: const Text('الرجاء إدخال البريد الالكتروني لإرسال'
                  , style: TextStyle(fontSize: 20, color: Colors.black),

                  ),
                ),
                Container(
                  child: const Text(' رمز التحقق '
                   , style: TextStyle(fontSize: 21, color: Colors.black),

                      ),
                ),
               const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                     Text('البريد الإلكتروني'
                    , style: TextStyle(fontSize: 21, color: Colors.black),
                    ),
                  ],
                ),
                const TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(border: OutlineInputBorder(),),
                  keyboardType: TextInputType.emailAddress,
                ),
               const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: MyButton(txt: 'أرسل الكود', Onclick: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Verificationscreen()));
                  }),
                )

              ],

            ),
          ),
        ),
      ),
    );
  }
}
