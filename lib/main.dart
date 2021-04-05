import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {

  int count = 0;
  String _message = 'Tap this button.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App 1'),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text(_message),
              RaisedButton(
                child: Text('OK'),
                onPressed: _onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onPressed() {
    setState(() {
      List list = ['a','b','c'];
      // generates a new Random object
      final _random = new Random();

      var element = list[_random.nextInt(list.length)];

       if(element == "a") {
         _message = "helloa";
       } else if (element == "b") {
         _message = "hellob";
       } else {
         _message = "helloc";
       }

    });
  }
}