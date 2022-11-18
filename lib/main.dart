import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var _questionindex = 0;
  var questions = [
    {
      'questiontext': 'What is your favourite color',
      'answers': ['red', 'blue', 'green', 'Black'],
    },
    {
      'questiontext': 'What is your favourite animal',
      'answers': ['Dog', 'Horse', 'Falcon', 'Pegan'],
    },
    {
      'questiontext': 'What is your name please',
      'answers': ['Ammar', 'Mazhar', 'BaJwa', 'khan'],
    },
  ];
  _answerquestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
    if (_questionindex < questions.length) {
      print('we have more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ammar"),
        ),
        body: Column(
          children: [
            Question(questions[_questionindex]['questiontext'] as String),
            ...(questions[_questionindex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerquestion, answer);
            }).toList()
          ],
        ),
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
