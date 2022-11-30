import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';
import 'NavigationDrawerWidget.dart';
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
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 7},
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
        {'text': 'Khan', 'score': 9}
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
        drawer: NavigationDarwerWidget(),
        appBar: AppBar(
          title: Text("Ammar"),
        ),
        backgroundColor: Colors.lightBlue,
        body: _questionindex < _questions.length
            ? quiz(
                answerquestion: _answerquestion,
                questionindex: _questionindex,
                questions: _questions,
              )
            : result(_totalscore),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add,
                  color: Colors.amber,
                ),
              ],
            )),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: CircularNotchedRectangle(),
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {},
                      splashColor: Colors.lightBlue,
                      highlightColor: Colors.white,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Text(
                      'Shop',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 0, top: 10, bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                    ),
                    Text(
                      'Like',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
