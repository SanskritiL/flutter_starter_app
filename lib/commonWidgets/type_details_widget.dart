import 'package:flutter/material.dart';
import '../model/Type.dart';
import '../styleguide/text_style.dart';
class TypeDetailsWidget extends StatelessWidget {
  final Type type;
  TypeDetailsWidget({this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 16, 24, 12),
      child: Column(
        children: <Widget>[
          Align(

            alignment: Alignment.topRight,
                      child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.withOpacity(0.4),width: 2.0),
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Text(
                      type.rank,
                      style: selectedTabStyle
                    ),
                    
                  ),
                  
                ),
                Text("new"),
              ],
            ),
          )
        ,
        SizedBox(
          height: 40.0,
        )
        ],
      ),

    );
  }
}
