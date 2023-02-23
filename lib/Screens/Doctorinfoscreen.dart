import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/Doctorsscreen.dart';
import 'package:rafeeq/Screens/Splachscreen.dart';
import 'package:rafeeq/Screens/homewithdocscreen.dart';

import '../Buttons/ElevatedButton.dart';

class Doctorinfoscreen extends StatelessWidget {
  const Doctorinfoscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctorsscreen()));
          }, icon: const Icon(Icons.chevron_left, size: 30,)
            ,color: Colors.black,
          ),
        ),

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  [
                const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('images/image_9-removebg-preview.png') ,
                  backgroundColor: Colors.white,
                ),
                const Text('د/ محمد عبدالرحمن',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Text('إستشاري الطب النفسي',
                  style: TextStyle(fontSize: 15),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Text('الكشف : 100 جنيه',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('مواعيد الكشف المتاحة',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 170,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                              labelText: 'اليوم',
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 50,
                        width: 170,
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                              labelText: 'الساعة',
                              border: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child:
                    const TextField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          labelText: 'الإسم بالكامل',
                          border: OutlineInputBorder()
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child:
                    const TextField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          labelText: 'رقم الهاتف',
                          border: OutlineInputBorder()
                      ),
                    ),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('أدخل الرقم الخاص بالدفع عن طريق فودافون كاش',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child:
                    const TextField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('سيتم إرسال رسالة لتاكيد الحجز فور التأكد من الدفع',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 190,
                    child: MyButton(txt: 'تأكيد الحجز', Onclick: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homewithdocscreen()));
                    }),
                  ),
                ),
                Divider(
                  indent:10 ,
                  endIndent: 10,
                  color: Colors.blue[600],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('التقييمات',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
                Divider(
                  indent: 340,

                  color: Colors.blue[600],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('يارا علي ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('رائع ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Colors.blue[600],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('منار محسن',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('ممتاز',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Colors.blue[600],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
