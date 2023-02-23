import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Doctorinfoscreen.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';
import 'package:rafeeq/Screens/Sign%20up.dart';

class Doctorsscreen extends StatefulWidget {
  const Doctorsscreen({Key? key}) : super(key: key);

  @override
  State<Doctorsscreen> createState() => _DoctorsscreenState();
}

class _DoctorsscreenState extends State<Doctorsscreen> {
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
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
            child: Text(
              'إختر طبيبك',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));
            },
          ),
        ),
        body: Container(
          child: ListView.separated(
            shrinkWrap: true,
                scrollDirection: Axis.vertical
              ,itemBuilder: (context, items){
            return builtdoctoritem();
          },
              separatorBuilder: (context,item){
                  return const SizedBox(height: 30,);
              },
          itemCount: 6
          ),
        )

      ),
    );
  }

  // to do list item
  Widget builtdoctoritem() => Row(
    crossAxisAlignment: CrossAxisAlignment.start
    ,
    children: [
      const CircleAvatar(
        radius: 55,
        backgroundImage: AssetImage('images/image_9-removebg-preview.png') ,
        backgroundColor: Colors.white,
      ),
      Column(
        children:  [
          Text('د/ محمد أحمد',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('إستشاري أمراض نفسية',
            style: TextStyle(fontSize: 13),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('الكشف : 100 جنيه',
            style: TextStyle(fontSize: 13),
          ),

          Text('متاح غدا : 10 ص - 6 م',
            style: TextStyle(fontSize: 13),
          ),
         Container(
           height: 30,
           width: 100,
           child: MyButton(txt: 'إحجز', Onclick: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctorinfoscreen()));
           }),
         )

        ],
      ),

    ],
  );
}
