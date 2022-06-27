// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MIRsquared",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text("Mi Card"),
        ),
        body: SafeArea(
          child: Column(
            children:const <Widget>[
           CircleAvatar(
             radius: 80.0,
             backgroundImage: AssetImage('img/diamond.png'),
           ),
           Text('Austin Gareth',style: TextStyle(fontSize: 40.0,color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          ),
          ),
    );
  }
}
