import 'package:flutter/material.dart';

// void main() {
//   runApp(myapp());
// }
void main() => runApp(myapp());

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = {
      "what is your favourite color ",
      "what is your favourite animal",
    };
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Ammar"),
            ),
            body: Column(children: [
              Text("HI question!"),
              
              RaisedButton(
                child: Text("Answer 1"),
                onpressed: null), 
                RaisedButton(
                child: Text("Answer 2"),
                onpressed: null), 
                RaisedButton(
                child: Text("Answer 3"),
                onpressed: null,
              ),
            ])));
  }
}

RaisedButton({required Text child, required onpressed}) {
}
