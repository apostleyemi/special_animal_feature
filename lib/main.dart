import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Special Animals'),
          backgroundColor: Colors.lightBlue[200],
        ),
        body: _DicePage(),
      ),
    ),
  );
}

class _DicePage extends StatefulWidget {
  const _DicePage({Key? key}) : super(key: key);

  @override
  State<_DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<_DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void ChangeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(30) + 1;
      rightDiceNumber = Random().nextInt(30) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/$leftDiceNumber.JPG'),
              onPressed: () {
                ChangeDice();
              },
            ),
          ),
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/$leftDiceNumber.$leftDiceNumber.JPG'),
              onPressed: () {
                // this function change the state of the dice
                ChangeDice();
              },
            ),
          )
        ],
      ),
    );
  }
}
