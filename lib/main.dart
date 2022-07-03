// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';



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
        body: Xyloo(),
        ),
    );
  }
}

class Xyloo extends StatelessWidget {
  const Xyloo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: TextButton(child: const Text('Click me'),
      onPressed:() {
       
     
      },
      style: TextButton.styleFrom(),
      ),
    ),);
  }
}