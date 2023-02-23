

import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/Loginscreen.dart';
import 'package:rafeeq/Screens/Verificationscreen.dart';

class Newpassword extends StatefulWidget {
  const Newpassword({Key? key}) : super(key: key);

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
 var passcontroller = TextEditingController();
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: const Icon(Icons.chevron_left,
          size: 30,
            color: Colors.black,
          ), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Verificationscreen()));
          },),

          title: const Center(
            child: Text('إنشاء كلمة مرور جديدة',
            style: TextStyle(fontSize: 25 , color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body:

        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children:  [
                const Image(image: AssetImage('images/—Pngtree—check mark green isolated icon_8270385.png'
                ),
                height: 320,
                  width: 320,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                     Text('كلمة المرور الجديدة',
                    style: TextStyle( fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                  TextField(
                    controller: passcontroller,
                   obscureText: pass,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  prefixIcon: IconButton(onPressed: (){
                    setState(() {
                      pass = !pass;
                    });
                  }, icon: Icon(Icons.remove_red_eye))
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                 const SizedBox(
                   height: 15,
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('تأكيد كلمة المرور',
                      style: TextStyle( fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                 TextField(
                  textAlign: TextAlign.end,
                  obscureText: pass,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                    prefixIcon: IconButton(onPressed: (){
                      setState(() {
                        pass = !pass;
                      });
                    },icon: Icon(Icons.remove_red_eye))
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5, vertical: 28),
                  child: MyButton(txt: 'تأكيد', Onclick: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                  } ),
                )
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
