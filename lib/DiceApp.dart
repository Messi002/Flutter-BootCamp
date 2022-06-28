// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MIRsquared",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text(
              "MIRsquared Dicee App",
              style: TextStyle(
                fontFamily: 'Pacifico',
              ),
            )),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
    int rightNum = 1;
       int leftNum = 3;
    void changeDice(){
      setState(() {
                leftNum = Random().nextInt(6) + 1;
               rightNum = Random().nextInt(6) + 1;
              });
    }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: (){
             changeDice();
            }, 
            child: Image.asset('Dicepics/dice$leftNum.png'),
          ),
        ),
        Expanded(
          child: TextButton(
        onPressed: (){
             changeDice();
            }, 
            child: Image.asset('Dicepics/dice$rightNum.png'),
          ),
        ),
      ]),
    );

  }
}



 