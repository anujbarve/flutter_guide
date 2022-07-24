import 'package:flutter/material.dart';

void main() {
  runApp(Expense());
}

class Expense extends StatelessWidget {
  const Expense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
      ),
      body: Center(child: Text("Default App")),
    );
  }
}
