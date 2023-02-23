import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Sign%20up.dart';

class Questionsscreen extends StatefulWidget {
  const Questionsscreen({Key? key}) : super(key: key);

  @override
  State<Questionsscreen> createState() => _QuestionsscreenState();
}

class _QuestionsscreenState extends State<Questionsscreen> {
  var number = 0;
  var chossenNumber = 0;
  int _value = 0;
  int _value1 = 0;
  int _value2 = 0;
  int _value3 = 0;
  int _value4 = 0;
  int _value5 = 0;
  int _value6 = 0;
  int _value7 = 0;
  int _value8 = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Sign_up()));
              },
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'جاوب علي الاسألة عشان نقدر نساعدك أكتر',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          height: 2,
                          color: Colors.grey[600],
                          width: 300,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تعاني من النرفزة والإرتعاش؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = val!;
                                print(_value);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = val!;
                                print(_value);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = val!;
                                print(_value);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = val!;
                                print(_value);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = val!;
                                print(_value);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تشعر بفقدان الطاقة؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value1,
                            onChanged: (val) {
                              setState(() {
                                _value1 = val!;
                                print(_value1);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value1,
                            onChanged: (val) {
                              setState(() {
                                _value1 = val!;
                                print(_value1);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value1,
                            onChanged: (val) {
                              setState(() {
                                _value1 = val!;
                                print(_value1);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value1,
                            onChanged: (val) {
                              setState(() {
                                _value1 = val!;
                                print(_value1);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value1,
                            onChanged: (val) {
                              setState(() {
                                _value1 = val!;
                                print(_value1);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'هل تراودك أفكار للنخلص من الحياة؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value2,
                            onChanged: (val) {
                              setState(() {
                                _value2 = val!;
                                print(_value2);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value2,
                            onChanged: (val) {
                              setState(() {
                                _value2 = val!;
                                print(_value2);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value2,
                            onChanged: (val) {
                              setState(() {
                                _value2 = val!;
                                print(_value2);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value2,
                            onChanged: (val) {
                              setState(() {
                                _value2 = val!;
                                print(_value2);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value2,
                            onChanged: (val) {
                              setState(() {
                                _value2 = val!;
                                print(_value2);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تبكي بسهولة علي أشياء لا تستحق؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value3,
                            onChanged: (val) {
                              setState(() {
                                _value3 = val!;
                                print(_value3);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value3,
                            onChanged: (val) {
                              setState(() {
                                _value3 = val!;
                                print(_value3);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value3,
                            onChanged: (val) {
                              setState(() {
                                _value3 = val!;
                                print(_value3);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value3,
                            onChanged: (val) {
                              setState(() {
                                _value3 = val!;
                                print(_value3);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value3,
                            onChanged: (val) {
                              setState(() {
                                _value3 = val!;
                                print(_value3);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'هل تشعر بأنك مقبوض او ممسوك أو مكبل؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value4,
                            onChanged: (val) {
                              setState(() {
                                _value4 = val!;
                                print(_value4);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value4,
                            onChanged: (val) {
                              setState(() {
                                _value4 = val!;
                                print(_value4);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value4,
                            onChanged: (val) {
                              setState(() {
                                _value4 = val!;
                                print(_value4);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value4,
                            onChanged: (val) {
                              setState(() {
                                _value4 = val!;
                                print(_value4);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value4,
                            onChanged: (val) {
                              setState(() {
                                _value4 = val!;
                                print(_value4);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تعاني من ألم أسفل الضهر؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value5,
                            onChanged: (val) {
                              setState(() {
                                _value5 = val!;
                                print(_value5);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value5,
                            onChanged: (val) {
                              setState(() {
                                _value5 = val!;
                                print(_value5);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value5,
                            onChanged: (val) {
                              setState(() {
                                _value5 = val!;
                                print(_value5);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value5,
                            onChanged: (val) {
                              setState(() {
                                _value5 = val!;
                                print(_value5);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value5,
                            onChanged: (val) {
                              setState(() {
                                _value5 = val!;
                                print(_value5);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تشعر بالإنزعاج علي الأشياء بشكل كبير؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value6,
                            onChanged: (val) {
                              setState(() {
                                _value6 = val!;
                                print(_value6);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value6,
                            onChanged: (val) {
                              setState(() {
                                _value6 = val!;
                                print(_value6);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value6,
                            onChanged: (val) {
                              setState(() {
                                _value6 = val!;
                                print(_value6);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value6,
                            onChanged: (val) {
                              setState(() {
                                _value6 = val!;
                                print(_value6);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value6,
                            onChanged: (val) {
                              setState(() {
                                _value6 = val!;
                                print(_value6);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تعاني من فقد الإهتمام بالأشياء؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value7,
                            onChanged: (val) {
                              setState(() {
                                _value7 = val!;
                                print(_value7);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value7,
                            onChanged: (val) {
                              setState(() {
                                _value7 = val!;
                                print(_value7);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value7,
                            onChanged: (val) {
                              setState(() {
                                _value7 = val!;
                                print(_value7);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value7,
                            onChanged: (val) {
                              setState(() {
                                _value7 = val!;
                                print(_value7);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value7,
                            onChanged: (val) {
                              setState(() {
                                _value7 = val!;
                                print(_value7);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تشعر بفقدان الامل في المستقبل؟',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'لا أعاني أبدا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Radio(
                            value: 1,
                            groupValue: _value8,
                            onChanged: (val) {
                              setState(() {
                                _value8 = val!;
                                print(_value8);
                              });
                            }),
                        Radio(
                            value: 2,
                            groupValue: _value8,
                            onChanged: (val) {
                              setState(() {
                                _value8 = val!;
                                print(_value8);
                              });
                            }),
                        Radio(
                            value: 3,
                            groupValue: _value8,
                            onChanged: (val) {
                              setState(() {
                                _value8 = val!;
                                print(_value8);
                              });
                            }),
                        Radio(
                            value: 4,
                            groupValue: _value8,
                            onChanged: (val) {
                              setState(() {
                                _value8 = val!;
                                print(_value8);
                              });
                            }),
                        Radio(
                            value: 5,
                            groupValue: _value8,
                            onChanged: (val) {
                              setState(() {
                                _value8 = val!;
                                print(_value8);
                              });
                            }),
                        const Text(
                          'أعاني كثيرا',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyButton(
                        txt: 'التالي',
                        Onclick: () {
                          chossenNumber = _value1 +
                              _value2 +
                              _value3 +
                              _value4 +
                              _value5 +
                              _value6 +
                              _value7 +
                              _value8;
                          print(chossenNumber);
                          if (chossenNumber > 0 && chossenNumber < 10) {
                            print("Normal");
                          } else if (chossenNumber > 10 && chossenNumber < 20) {
                            print("DEPRESSED");
                          } else {
                            print("SEVERE");
                          }
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
