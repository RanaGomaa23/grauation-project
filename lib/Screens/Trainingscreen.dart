import 'package:flutter/material.dart';
import 'package:rafeeq/Buttons/ElevatedButton.dart';
import 'package:rafeeq/Screens/homewitoutdocscreen.dart';
import 'package:video_player/video_player.dart';

class Trainingscreen extends StatefulWidget {
  const Trainingscreen({Key? key}) : super(key: key);

  @override
  State<Trainingscreen> createState() => _TrainingscreenState();
}

class _TrainingscreenState extends State<Trainingscreen> {
  String url ='https://youtu.be/DJt6ORwxKmE';
  late VideoPlayerController networkcontroller;
  @override
  void initState() {
    networkcontroller= VideoPlayerController.network(url)..initialize().then((value) => (){
      setState(() {

      });
    });
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
              Container(
                  height: 200,
                  width: 200,
                  child: AspectRatio(child: VideoPlayer(networkcontroller),aspectRatio: networkcontroller.value.aspectRatio,)),
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
      ),
    );
  }
}
