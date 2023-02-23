import 'package:flutter/material.dart';
import 'package:rafeeq/Mytools/Colors.dart';

class MyButton extends StatelessWidget {
  final String txt;
  final VoidCallback Onclick;
  const MyButton({Key? key, required this.txt, required this.Onclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: Onclick,
      child: Text(
        txt,
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          primary: MyButtonColor,
          minimumSize: const Size(double.infinity, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23))),
    );
  }
}
