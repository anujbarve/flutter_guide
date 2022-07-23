import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    var resText = "You did it";

    if (resultScore == 80) {
      resText = "Poor";
    } else if (resultScore <= 100) {
      resText = "Average";
    } else if (resultScore >= 100) {
      resText = "Great";
    } else {
      resText = "Amazing";
    }

    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: reset, child: Text("Reset Quiz"))
        ],
      ),
    );
  }
}
