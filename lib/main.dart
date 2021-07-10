import 'package:flutter/material.dart';

//must be after all the packages then we import our own file
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //list here so whole app can use it, things inside build method can only be used there
  final _questions = const [
    {
      'quesText': 'What is your favorite Food',
      'ansText': [
        {'text': 'Momos', 'score': 2},
        {'text': 'chicken', 'score': 7},
        {'text': 'Pasta', 'score': 4},
        {'text': 'Pizza', 'score': 11}
      ]
    },
    {
      'quesText': 'What is your favorite Color',
      'ansText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Pink', 'score': 5},
        {'text': 'Yellow', 'score': 1},
        {'text': 'green', 'score': 8}
      ]
    },
    {
      'quesText': 'What is your favorite Animal',
      'ansText': [
        {'text': 'Black Panther', 'score': 1},
        {'text': 'Tiger', 'score': 2},
        {'text': 'Panda', 'score': 8},
        {'text': 'Lizard', 'score': 10}
      ]
    }
  ];
  var _ques = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _ques = 0;
      _totalScore = 0;
    });
  }

  void _ansQues(int score) {
    _totalScore += score;
    setState(() {
      _ques = _ques + 1;
    });
  }

  Widget build(BuildContext context) {
    //use of map insid of list and again have list inside map

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questionaire'),
          ),
          body: _ques < _questions.length
              ? Quiz(
                  ansQues: _ansQues,
                  questions: _questions,
                  ques:
                      _ques) //takes total score and ques index,question list, and ques index which gets updated when ans ques called
              : Result(_totalScore,
                  _resetQuiz) //use of ternery expression and takes, totalscore, and reset quiz if a person is on result page
          ),
    );
  }
}
