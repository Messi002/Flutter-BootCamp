// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'MIRsquared',
      theme: ThemeData(primaryColor: Colors.blue.shade900),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 20, 63, 99),
        appBar: AppBar( title:const Text('MIRsquared MagicBall',style: TextStyle(fontFamily:'Pacifico'),),
        backgroundColor: Color.fromARGB(255, 31, 88, 185),),
        body: magicBall(),
        ),
    );
  }
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int number = 4;
  void changeNum (){
    setState(() {
      number = Random().nextInt(5) + 1; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
              child: TextButton(
                onPressed:() => changeNum(), 
              child: Image.asset('Magicballpics/ball$number.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}