import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;

  var num2 = 1;

  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    setState(() {});
  }

// pic 1 is sci
// pic 2 is rock
//pic 3 is paper

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rock Paper Scissors'),
          backgroundColor: Colors.deepPurple[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/i_$num1.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/i_$num2.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text('Player 1'),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text('Player 2'),
                  ),
                ],
              ),
              Container(
                height: 70,
              ),
              Container(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  child: Text('Play'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[200],
                  ),
                  onPressed: () {
                    play();
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
