import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var _questionindex = 0;
  var _questions = [
    {
      'questiontext': 'What is your favourite color',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 7},
        {'text': 'Black', 'score': 8}
      ],
    },
    {
      'questiontext': 'What is your favourite animal',
      'answers': [
        {'text': 'Dog', 'score': 4},
        {'text': 'Horse', 'score': 7},
        {'text': 'Falcon', 'score': 8},
        {'text': 'Pegan', 'score': 6}
      ],
    },
    {
      'questiontext': 'What is your name please',
      'answers': [
        {'Text': 'Ammar', 'score': 4},
        {'text': 'Mazhar', 'score': 7},
        {'text': 'BaJwa', 'score': 8},
        {'text': 'khan', 'score': 9}
      ],
    },
  ];
  var _totalscore = 0;
  void _answerquestion(int score) {
    _totalscore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
    if (_questionindex < _questions.length) {
      print('we have more question');
    } else {
      print('No more Question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ammar"),
        ),
        body: _questionindex < _questions.length
            ? quiz(
                answerquestion: _answerquestion,
                questionindex: _questionindex,
                questions: _questions,
              )
            : result(_totalscore),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Ammar Bajwa'),
                accountEmail: Text(
                  'bajwasaab@gmail.com',
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            child:
            Icon(Icons.add);
            backgroundColor:
            Colors.amber;
            foregroundColor:
            Colors.blue;
            elevation:
            0;
            // shape:
            // BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0));
          },
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
