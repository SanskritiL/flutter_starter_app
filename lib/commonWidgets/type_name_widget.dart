import 'package:flutter/material.dart';
import 'package:playing_with_flutter/styleguide/colors.dart';
import '../model/Type.dart';
import '../styleguide/text_style.dart';

class TypeNameWidget extends StatelessWidget {

final Type type;
TypeNameWidget({this.type});
  @override
  Widget build(BuildContext context) {
    return Material(
          color: primaryColor,
          elevation: 20.0,
          shape: CustomShapeBorder(),

          child:Padding(
            padding: const EdgeInsets.only(top:18, left: 16, right: 24,bottom:10),
            child: Text(
              type.title,
              style: typeNameStyle
            ), 
          )
    );
  }
}
class CustomShapeBorder extends ShapeBorder{

final double distanceFromWall = 12;
final double controlPointDistanceFromWall = 2;


  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    // TODO: implement getInnerPath
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    // TODO: implement getOuterPath
    return getClip(Size(130,60));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    // TODO: implement paint
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    return null;
  }
  Path getClip(Size size){
    Path clippedPath = Path();
    clippedPath.moveTo(0 + distanceFromWall, 0);
    clippedPath.quadraticBezierTo(0+controlPointDistanceFromWall, 0+controlPointDistanceFromWall,0, 0+distanceFromWall);
    clippedPath.lineTo(0, size.height-distanceFromWall);
    clippedPath.quadraticBezierTo(
      0+ controlPointDistanceFromWall, 
      size.height - controlPointDistanceFromWall, 
      0+distanceFromWall,
       size.height
      );
    clippedPath.lineTo(size.width-distanceFromWall, size.height);
    clippedPath.quadraticBezierTo(size.width-controlPointDistanceFromWall,
     size.height - controlPointDistanceFromWall, 
     size.width, 
     size.height- distanceFromWall
     );  
     clippedPath.lineTo(size.width, size.height*0.6);
      clippedPath.quadraticBezierTo(size.width-1, size.height*0.6-distanceFromWall, size.width-distanceFromWall, size.height*0.6-distanceFromWall-3);
   clippedPath.lineTo(0+distanceFromWall +6, 0);
   clippedPath.close();
    return clippedPath;
  }


  
}