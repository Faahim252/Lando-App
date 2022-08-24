import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Lando App')),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int bidix = 1;
  int midig = 1;

  void change() {
    setState(
      () {
        bidix = Random().nextInt(6) + 1;
        midig = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('lib/images/dice$bidix.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  change();
                },
                child: Image.asset('lib/images/dice$midig.png')),
          ),
        ],
      ),
    );
  }
}
