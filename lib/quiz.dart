import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>
      questions; //question list passed where ques is key and ans is another list having diff answers
  final int ques; //ques number
  final Function
      ansQues; //function passed containing total score and ques index by score only we display the result

  Quiz({@required this.questions, @required this.ansQues, @required this.ques});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[ques][
            'quesText']), //our ques widget make in question.dart file i.e question widget takes ques text and a list of ans text mapped with ques like ques:selected ans as key value pair
        ...(questions[ques]['ansText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => ansQues(answer['score']), answer['text']); //annonymous fn
        }).toList()
      ],
    );
  }
}
//if function written as pointer by default it'll take it without the arguments
//Benefit of annonymous fn is that it won't be executed, but only stored in memory
//And when it's trggered or called, the it'll do the work
//that's why it's better to iuse annonymous fn when we want to do something
//with the function that is we want the value to be returned insted
//of just passing the function pointer.
