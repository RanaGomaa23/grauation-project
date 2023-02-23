import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/Doctorsignupscreen.dart';

import '../Buttons/ElevatedButton.dart';
import 'Forgetpasswordscreen.dart';
import 'Startscreen.dart';

class Docloginscreen extends StatefulWidget {
  const Docloginscreen({Key? key}) : super(key: key);

  @override
  State<Docloginscreen> createState() => _DocloginscreenState();
}

class _DocloginscreenState extends State<Docloginscreen> {
  bool pass=true;
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
                            controller: emailcontroller,
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                            const InputDecoration(
                                border: OutlineInputBorder(),

                                labelText: "أدخل إسم المستخدم"),

                          ),
                          const Text(' : الرقم السري ', style: TextStyle(fontSize: 20)),
                          TextField(
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
                          print(passwordcontroller.text);
                          print(emailcontroller.text);
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Doctorsignupscreen()));
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
                      SizedBox(
                        width: 15,
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
