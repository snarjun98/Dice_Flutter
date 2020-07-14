import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: MyApp(),
      ),
    ),
  ),
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int left = 6;
  int right = 6;

  void change (){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: () {
              change();

            },
            child: Image.asset('images/dice$left.png'),
          ),

          ),

          Expanded(
            child: FlatButton(
              onPressed: () {
               change();
              },
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }


}