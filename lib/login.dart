import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final emailField = TextField(
      decoration: InputDecoration(
    hintText: 'Enter email here...',
    fillColor: Colors.white,
    prefixIcon: Padding(
      padding: const EdgeInsetsDirectional.only(start: 12.0),
      child: Icon(Icons.account_box),
    ),
    border: new OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: new BorderSide(),
    ),
  ));

  final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0),
          child: Icon(Icons.lock),
        ),
        border: new OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: new BorderSide(),
        ),
      ));
  
  final loginButton = RaisedButton(
    color: Colors.red,
    child: Text("Login"),
    highlightColor: Colors.tealAccent[400],
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
    onPressed: (){},
 );



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: Colors.orange[100],
          body: Center(
            child: new SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                      width: 210,
                      height: 250,
                      child: FlareActor(
                        'assets/login.flr',
                        alignment: Alignment.topCenter,
                        fit: BoxFit.contain,
                        animation: "Alarm",
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
                    padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
                    child: emailField,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
                    child: passwordField,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: loginButton,
                    
                    )
                ],
              ),
            ),
          )),
    );
  }
}
