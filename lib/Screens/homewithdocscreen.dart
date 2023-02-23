import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/trainingscreen2.dart';

import '../Buttons/ElevatedButton.dart';
import 'Doctorsscreen.dart';
import 'Startscreen.dart';
import 'Trainingscreen.dart';

class homewithdocscreen extends StatefulWidget {
  const homewithdocscreen({Key? key}) : super(key: key);

  @override
  State<homewithdocscreen> createState() => _homewithdocscreenState();
}

class _homewithdocscreenState extends State<homewithdocscreen> {
  bool task1 = false;
  bool task2 = false;
  bool task3 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton( onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctorsscreen()));
        }, icon: Icon(Icons.chevron_left,size: 30,color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'إزيك يا يارا',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Icon(
            Icons.local_florist,
            color: Colors.deepOrange,
            size: 30,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white24,
                    ),
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(23),
                  ),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('images/Frame 634.png')),
                      Text(
                        'متنساش تقول لصديقك عن يومك',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Doctorsscreen()));
                      },
                      child: const Text(
                        'هنا',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                  const Text(
                    'يمكنك الإختيار من أفضل الاطباء لدينا من',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
              Container(
                height: 2,
                color: Colors.grey[500],
                width: 380,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'تمارين اليوم',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.accessibility_outlined,
                    size: 30,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white24,
                      ),
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(23),
                    ),
                    height: 200,
                    width: 180,
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage('images/maxresdefault (1).jpg')),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text('جلسة تأمل',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              child: MyButton(
                                txt: ('ابدأ'), Onclick: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const trainingscreen2()));
                              },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white24,
                      ),
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(23),
                    ),
                    height: 200,
                    width: 180,
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage('images/maxresdefault.jpg')),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text('تمارين العقل',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              child: MyButton(
                                txt: ('ابدأ'), Onclick: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Trainingscreen()));
                              },
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                color: Colors.grey[500],
                width: 380,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'المهام اليومية',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.task_outlined,
                    size: 30,
                    color: Colors.red,
                  )
                ],
              ),
              CheckboxListTile(value: task1, onChanged: (val){
                setState(() {
                  task1=val!;
                },
                );
              },
                activeColor: Colors.red,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('شربت من 6 ل 8 كوباية ماية النهاردة؟',style: TextStyle(fontSize: 18),),
                  ],
                ),

              ),
              CheckboxListTile(value: task2, onChanged: (val){
                setState(() {
                  task2=val!;
                },
                );
              },
                activeColor: Colors.red,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('إقرأ أي كتاب بتحبه',style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              CheckboxListTile(value: task3, onChanged: (val){
                setState(() {
                  task3=val!;
                },
                );
              },
                activeColor: Colors.red,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('اعمل التمارين اليومية',style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Container(
                height: 2,
                color: Colors.grey[500],
                width: 380,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'مستوي التقدم',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.stacked_bar_chart_outlined,
                    size: 30,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Image(image: AssetImage('images/Frame 633.png')),
            ],
          ),
        ),
      ),
    );
  }
}
