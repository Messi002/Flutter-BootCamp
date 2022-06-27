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
          children: <Widget>[
            SizedBox(height: 30,),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('img/diamond.png'),
            ),
            Text(
              'Messi II Inno. R.',
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontSize: 10.0, color: Colors.teal[100], letterSpacing: 10),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(children: [
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(width: 10.0),
                Text(
                  '(+237) XXX XXX XXX',
                  style: TextStyle(color: Colors.teal[900], fontSize: 15),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(children: [
                Icon(
                  Icons.email,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(width: 10.0),
                Text(
                  'something@gmail.com',
                  style: TextStyle(color: Colors.teal[900], fontSize: 15),
                ),
                
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
