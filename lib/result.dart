import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultscore;
  result(this.resultscore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You did It'),
    );
  }
}
