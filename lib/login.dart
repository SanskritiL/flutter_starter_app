import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import './home.dart';


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
                    child: new Column(
                      children: <Widget>[
                        Container(
                          child: 
                          Builder(
                          builder: (BuildContext context){
                          return RaisedButton(
                            color: Colors.teal[200],
                            child: Text("Login"),
                            highlightColor: Colors.tealAccent[400],
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  FadeRoute(
                                      //builder: (context) => MyHome()));
                               page: MyHome())
                              );
                            }
                          );
                            }
                          ),
                          //alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                        ),
                        Container(
                          child: Text(
                            'Don\'t have an account? Register Meow',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color: Colors.redAccent),
                          ),
                          padding: EdgeInsets.fromLTRB(24, 15, 0, 0),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
                opacity: animation,
                child: child,
              ),
        );
}