// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';


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
              "Dicee App",
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
       int leftNum = 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: (){
              setState(() {
                
               
              });
            }, 
            child: Image.asset('Dicepics/dice$leftNum.png'),
          ),
        ),
        Expanded(
          child: TextButton(
        onPressed: (){
              print('right button got correctly');
            }, 
            child: Image.asset('Dicepics/dice$rightNum.png'),
          ),
        ),
      ]),
    );

  }
}



 