import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultscore;
  result(this.resultscore);

  String get resultphrase {
    var resultText = 'You did It';
    if (resultscore <= 8) {
      resultText = 'You are Awesome na Cute';
    } else if (resultscore <= 12) {
      resultText = 'Pretty Goog learner';
    } else if (resultscore <= 16) {
      resultText = 'you are ... Stranger';
    } else {
      resultText = 'You are bad';
    }
    ;
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultphrase,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
