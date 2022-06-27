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
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: 20.0, width: 200.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
                Card(
                elevation: 10.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone,color: Colors.teal,),
                subtitle: Text("my phone number"),
                tileColor: Colors.white,
                title: Text('(+237) XXX XXX XXX',style: TextStyle(color: Colors.teal[900], fontSize: 15),),
                trailing: Icon(Icons.more_vert),
            ),
            ),
            Card(
                elevation: 10.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email,color: Colors.teal,),
                subtitle: Text("my email"),
                tileColor: Colors.white,
                title: Text('something@gmail.com',style: TextStyle(color: Colors.teal[900], fontSize: 15),),
                trailing: Icon(Icons.more_vert),
            ),
            ),
          ],
        ),
      ),
    );
  }
}


