import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;
  void onPressDice() {
    Random r = new Random();
    setState(() {
      leftDice = r.nextInt(6) + 1;
      rightDice = r.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '$leftDice+$rightDice',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              // Will help to wrap the image and take the max size
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    onPressDice();
                    print(leftDice);
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
            ),
            Expanded(
              // Will help to wrap the image and take the max size
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    onPressDice();
                    print(rightDice);
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
