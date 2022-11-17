import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answertext;

  Answer(
    this.selectHandler,
    this.answertext,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber)),
          onPressed: selectHandler,
          child: Text(
            answertext,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
