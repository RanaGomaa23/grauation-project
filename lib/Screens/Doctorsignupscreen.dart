import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Doclogin_screen.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';

import 'Startscreen.dart';

class Doctorsignupscreen extends StatefulWidget {
  const Doctorsignupscreen({Key? key}) : super(key: key);

  @override
  State<Doctorsignupscreen> createState() => _DoctorsignupscreenState();
}

class _DoctorsignupscreenState extends State<Doctorsignupscreen> {
  bool pass = true;
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
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                'إنشاء حساب ',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Docloginscreen()));
              },
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {
                            print('أضف صورة شخصية');
                          },
                          icon: const Icon(
                            Icons.add_a_photo_outlined,
                            size: 40,
                          ),
                          color: Colors.green),
                    ),
                  ),
                  const Text('أضف صورة',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('الإسم',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  TextFormField(
                    textAlign: TextAlign.end,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('التخصص',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  TextFormField(
                    textAlign: TextAlign.end,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('رقم الهاتف',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  TextFormField(
                    textAlign: TextAlign.end,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('البريد الإلكتروني',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.end,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('سعر الكشف',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  TextFormField(
                    textAlign: TextAlign.end,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('المواعيد المتاحة',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('إلي',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('السبت',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check_box_outline_blank)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('إلي',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      const Text('الاحد',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check_box_outline_blank)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('إلي',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('الإثنين',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check_box_outline_blank)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('إلي',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('الثلاثاء',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check_box_outline_blank)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('إلي',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('الأربعاء',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check_box_outline_blank)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('إلي',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text('الخميس',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check_box_outline_blank)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('الرقم السري',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  TextFormField(
                    obscureText: pass,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              pass = !pass;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('حمل رخصة مزاولة المهنة',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  MyButton(txt: ("تحميل"), Onclick: () {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('الملفات التي يمكن تحميلها PDF,JPG,PNG',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MyButton(txt: ('المتابعة'), Onclick: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Docloginscreen()));

                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const Docloginscreen()));
                    }, child: const Text('تسجيل الدخول',style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      ))),
                    const Text('هل تمتلك حساب؟',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ],),
                ]),
              ),
            ),
          ),
        ));
  }
}
