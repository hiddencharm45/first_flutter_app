//It is a best practice to divide the file into the cutom
//widget so that with all styling and all our main.dart doesn't become
//too cluttered

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questiontext; //property of ques widget, can be changed internally
  //final tells dart that this value would never change inside of this class, as its getting passed from main.dart
  Question(
      this.questiontext); //gets data from main file where we used our question class instead of text
  Widget build(BuildContext context) {
    return Container(
        //container isn't anything we see on screen
        width: double
            .infinity, //.infinity ensures container takes as much width as it gets here width of device
        margin: EdgeInsets.all(20),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
    //here we wanna output wues text which is in main.dart though
  }
}

//container: child(=content), padding inside a border and outside we have
//margin
