import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final Function answertext;

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
            'Answer 1',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
