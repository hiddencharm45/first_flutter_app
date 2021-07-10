//It would not be stateful though it is:
//Reason? we can make widget in stateless too

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function
      selecthandler; //As we are passing function pointer here and not the function itself
  final String answerText;
  Answer(this.selecthandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selecthandler,
        ));
  }
}
