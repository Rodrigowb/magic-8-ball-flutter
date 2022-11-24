import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Ask Whatever You Want'),
          backgroundColor: Colors.blue,
        ),
        body: AskApp(),
      ),
    ),
  );
}

class AskApp extends StatefulWidget {

  @override
  State<AskApp> createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {

  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {

    void changeNumber(){
      imageNumber = Random().nextInt(5) + 1;
    }

    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Expanded(
          child: Container(
            child: TextButton(
              child: Image.asset('images/ball$imageNumber.png'),
              onPressed: (){
                setState(() {
                  changeNumber();
                });
              }
            ),
          ),
        ),
      ),
    );
  }
}
