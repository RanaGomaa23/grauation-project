import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';
import 'package:rafeeq/Screens/Sign%20up.dart';

class Termsconditionsscreen extends StatelessWidget {
  const Termsconditionsscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            color: Colors.black,
            iconSize: 30,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));
            },
          ),
          title: const Center(
            child: Text(
              'الشروط والأحكام',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              children:  [
                const Text(
                  'مرحبا بكم في رفيق. يرجي قراءة شروط و ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                const Text(
                  'أحكام خدمتنا قبل إستخدام التطبيق',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                    '          بإستخدام خدماتنا, تسمح لنا بإستخدام معلوماتك مثل (البريد الإلكتروني, رقم الهاتف, العمر,.....)'
                    '  من أجل إعطائك أفضل خدمة علما  '
                , style: TextStyle(fontSize: 18, color: Colors.black54)
                ),
                const Text('         بأن معلوماتك لن يتم مشاركتها من قبل أي شخص, كما يمكنك إلغاء تنشيط حسابك أو حذفه بمجرد قيامك بذلك سيتم أيضا حذف معلوماتك كاملة'
                    , style: TextStyle(fontSize: 18, color: Colors.black54)
                ),
                const SizedBox(height: 10,),
                const Text('ملحوظة :'
                    ' يمكننا تغيير هذه الشروط وسنبلغك عبر البريد الالكتروني'
                    , style: TextStyle(fontSize: 20, color: Colors.black54)
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.check_box)),
                     const Text('لقد قرات ووافقت علي الشروط والأحكام',
                         style: TextStyle(fontSize: 17, color: Colors.black54)
                    ),
                  ],
                ),
                SizedBox(height: 3,),
                MyButton(txt: 'إستمرار', Onclick:(){
                  print('شكرا علي الموافقة');
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
