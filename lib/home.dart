import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import './commonWidgets/horizontalTabLayout.dart';
import './commonWidgets/app_background.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
   
      return Scaffold(
        body: Stack(
          children: <Widget>[
            AppBackground(),
            Center(child: 
            HorizontalTabLayout(),
            )
          ],
        ),
      );
   

  }
}