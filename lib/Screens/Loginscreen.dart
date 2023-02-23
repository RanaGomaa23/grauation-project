import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Doctorcallscreen.dart';
import 'package:rafeeq/Screens/Doctorsscreen.dart';
import 'package:rafeeq/Screens/Forgetpasswordscreen.dart';
import 'package:rafeeq/Screens/Newpassword.dart';
import 'package:rafeeq/Screens/Sign%20up.dart';
import 'package:rafeeq/Screens/Startscreen.dart';
import 'package:rafeeq/Screens/homewitoutdocscreen.dart';
import 'package:rafeeq/Screens/terms&conditionsscreen.dart';

class Loginscreen extends StatefulWidget {


   Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool pass = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Startscreen()));
            },
          ),
          title: const Center(
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                          const Text(
                            ': إسم المستخدم ',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextField(
                            textAlign: TextAlign.end,
                           controller: emailcontroller,
                           keyboardType: TextInputType.emailAddress,
                            decoration:
                                const InputDecoration(
                                    border: OutlineInputBorder(),

                                    labelText: "أدخل إسم المستخدم"),

                          ),
                          const Text(' : الرقم السري ', style: TextStyle(fontSize: 20)),
                           TextField(
                             textAlign: TextAlign.end,
                            controller: passwordcontroller,
                            obscureText: pass,
                            decoration:  InputDecoration(
                                suffixIcon: const Icon(Icons.lock),
                                prefixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    pass = !pass;
                                  });
                                }, icon: const Icon(Icons.remove_red_eye),),
                                border: const OutlineInputBorder(),
                                labelText: "أدخل الرقم السري"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Forgetpasswordscreen()));
                                },
                                child:  const Text('هل نسيت الرقم السري؟',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: MyButton(
                        txt: 'تسجيل الدخول',
                        Onclick: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>homewithoutdocscreen()));
                          print(passwordcontroller.text);
                          print(emailcontroller.text);
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Sign_up()));
                        },
                        child: const Text('إنشاء حساب',
                            style: TextStyle(fontSize: 15)),
                      ),
                      const Text('ليس لديك حساب؟'),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    'أو سجل الدخول باستخدام',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 70,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.email,
                        size: 70,
                        color: Colors.blue,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
