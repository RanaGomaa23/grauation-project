import 'package:flutter/material.dart';
import 'package:rafeeq/Screens/Splachscreen.dart';
import 'package:rafeeq/Screens/homewitoutdocscreen.dart';

class Doctorcallscreen extends StatelessWidget {
  const Doctorcallscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>homewithoutdocscreen()));
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
                color: Colors.black,
              )),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/image_9-removebg-preview.png')
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'د/مصطفي عبدالرحمن',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue[600],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.video_camera_back_rounded),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue[600],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mic_rounded),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.red,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.phone),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
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
