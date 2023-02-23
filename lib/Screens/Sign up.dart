import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/Doctorsscreen.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';
import 'package:rafeeq/Screens/Questionsscreen.dart';
import 'package:rafeeq/Screens/Startscreen.dart';
import 'package:rafeeq/Screens/terms&conditionsscreen.dart';

import '../Buttons/ElevatedButton.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool done = false;
  bool pass = true;
  List<String> gender = ['Male', 'Female'];
  String? selecteditem = 'Male';
  DateTime dateTime = DateTime(1940);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Loginscreen()));
            },
          ),
          title: const Center(
              child: Text(
            "إنشاء حساب",
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            ": الإسم ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            ": البريد الإلكتروني ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            ": الهاتف ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            ": النوع ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.expand_more,
                              size: 20,
                              color: Colors.black,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            ": تاريخ الميلاد ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: IconButton(
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime(2022),
                                          firstDate: DateTime(1940),
                                          lastDate: DateTime(2023))
                                      .then((value) {
                                    setState(() {
                                      dateTime = value!;
                                    });
                                  });
                                },
                                icon: Icon(Icons.date_range))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            ": الرقم السري ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      TextField(
                        obscureText: pass,
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                icon: const Icon(Icons.visibility_off))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 2,
                        color: Color(0xffff645b),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'إضافة طبيب (إختياري)',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "الإسم  ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "رقم الهاتف  ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('في حالة عدم وجود طبيب لك يمكنك الاختيار  ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Doctorsscreen()));
                                  },
                                  child: Text('هنا',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18))),
                              Text('من أفضل الأطباء لدينا من   ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 2,
                        color: Color(0xffff645b),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'إضافة مرافق (إختياري)',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "الإسم  ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "رقم الهاتف  ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "ادخل رمز التأكيد المكون من أربعة أرقام  ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      const TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 2,
                        color: Color(0xffff645b),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                  CheckboxListTile(value: done, onChanged: (val){
                    setState(() {
                      done=val!;
                    });
                  },
                    activeColor: Color(0xffff645b),
                    checkColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Termsconditionsscreen()));
                          },
                          child: Text('الشروط والاحكام',
                              style: TextStyle(
                                  color: Colors.green, fontSize: 18))),
                      Text(
                        "لقد قرأت ووافقت علي",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  MyButton(
                      txt: 'إنشاء الحساب ',
                      Onclick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Questionsscreen()));
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginscreen()));
                        },
                        child: const Text('تسجيل الدخول  ',
                            style:
                                TextStyle(fontSize: 15, color: Colors.green)),
                      ),
                      const Text(
                        "هل تمتلك حساب ؟ ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ])),
      ),
    ));
  }
}
