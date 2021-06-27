import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import 'answer.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var questionIndex = 0;
  var islastItem = false;
  static const questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': ['black', 'red', 'green', 'blue']
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': ['rabbit', 'snake', 'elephant', 'Lion']
    },
    {
      'questionText': 'what is your name?',
      'answers': ['joy', 'joy', 'Lion']
    },
  ];

  void _answerQuestion() {
    setState(() {
      if (questionIndex >= questions.length) {
        islastItem = true;
      } else
        questionIndex++;

      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizzApp'),
          centerTitle: true,
        ),
        body: islastItem == false
            ? Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Question(
                    questionText:
                        questions[questionIndex]['questionText'].toString(),
                  ),

                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                        selectHandler: _answerQuestion, answerText: answer);
                  }).toList()
                  // Answer(selectHandler: _answerQuestion),
                  // Answer(selectHandler: _answerQuestion),
                  // Answer(selectHandler: _answerQuestion),
                ],
              )
            : Text('End of question'),
      ),
    );
  }
}
