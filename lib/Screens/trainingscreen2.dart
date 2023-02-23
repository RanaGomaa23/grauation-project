import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/homewithdocscreen.dart';
import 'package:rafeeq/Screens/homewitoutdocscreen.dart';

import '../Buttons/ElevatedButton.dart';

class trainingscreen2 extends StatefulWidget {
  const trainingscreen2({Key? key}) : super(key: key);

  @override
  State<trainingscreen2> createState() => _trainingscreen2State();
}

class _trainingscreen2State extends State<trainingscreen2> {
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
          elevation: 0,
          backgroundColor: Colors.white,
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
                      builder: (context) => const homewithoutdocscreen()));
              MaterialPageRoute(
                  builder: (context) => const homewithdocscreen());

            },
          ),
          title: const Center(
            child: Text(
              'تمرين اليوم',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  height: 200,
                  width: 350,
                  color: Colors.pink[200],
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              const Text(
                'كمل للاخر يا بطل',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MyButton(
                    txt: 'خلصت خلاص ',
                    Onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const homewithoutdocscreen()));
                    }),
              )
            ],
          ),
        ),

    );
  }
}
