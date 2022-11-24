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
        appBar: AppBar(
          title: Text("Ammar"),
        ),
        backgroundColor: Colors.green,
        body: _questionindex < _questions.length
            ? quiz(
                answerquestion: _answerquestion,
                questionindex: _questionindex,
                questions: _questions,
              )
            : result(_totalscore),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Ammar"),
                accountEmail: Text("ammarsaab@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/women/74.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/47.jpg"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("About"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.grid_3x3_outlined),
                title: Text("Products"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: () {},
              )
            ],
          ),
        ),
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
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
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
