import 'package:flutter/material.dart';
import '../model/Type.dart';
import '../commonWidgets/type_name_widget.dart';
import '../commonWidgets/type_details_widget.dart';

class TypeCard extends StatelessWidget {
  final Type type;
  TypeCard({this.type});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        elevation: 20.0,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          child: Stack(
            children: <Widget>[
              Image.asset(
                type.imagePath,
                fit: BoxFit.fitWidth,
               
              ),
              Positioned(
                left: 0,
                right:0,
                bottom: 0,
                child: TypeDetailsWidget(type:type),
              ),
              Positioned(
                  left: 0,
                  bottom:150.0,
                child: TypeNameWidget(type: type),
              ),
              
             
            ],
          ),
        ),
      ),
    );
  }
}
