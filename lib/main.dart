import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.redAccent,
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftchange = 3;
  int rightchange = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftchange = Random().nextInt(6)+1;
                  rightchange = Random().nextInt(6)+1;
                });
                debugPrint('Left image has been pressed : $leftchange');
              },
              child: Image.asset(
                'images/dice$leftchange.png',
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: (){
                setState(() {
                  leftchange = Random().nextInt(6)+1;
                  rightchange = Random().nextInt(6)+1;
                });
                debugPrint('Right image has been pressed: $rightchange');
              },
              child: Image.asset(
                'images/dice$rightchange.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
