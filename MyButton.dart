// ignore_for_file: prefer_const_constructors, file_names, prefer_typing_uninitialized_variables, must_be_immutable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function() onpress;
  var buttontext;
  MyButton({
    super.key, 
    required this.onpress,
    required this.buttontext
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan.shade600,
            foregroundColor: Colors.white,
            elevation: 20,
            disabledForegroundColor: Colors.white,
            disabledBackgroundColor: Colors.cyan,
            shadowColor: Colors.cyan,
            side: BorderSide(
              color: Colors.cyan,
               width: 1,
                style: BorderStyle.solid)
          ),
        onPressed: (){
          onpress();
        },child: Text(buttontext,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0
        ),
        )),
    );
  }
}