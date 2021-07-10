import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resulttext = 'You did it';
    if (resultScore <= 8) {
      resulttext = 'Amazing Person';
    } else if (resultScore <= 12) {
      resulttext = 'Pretty Likeable!';
    } else if (resultScore <= 16) {
      resulttext = 'hmmmmmm?!';
    } else {
      resulttext = 'Bad!';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.redAccent,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}

//Getter: Mixture of property and method
//typle of value we wanna derrive and get keyword and anyword we want
//We dont add parenthesis, but it has a body and return something
