import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        body: Center(
          child: Container(
            width: 256,
            height: 512,
            child: FlareActor('assets/login.flr',
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
            animation: "Alarm",
          )
          )
        ),
      ),
    );
  }
}