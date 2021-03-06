import 'package:flutter/material.dart';
import '../styleguide/text_style.dart';

class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTabTap;

  TabText({this.isSelected=false, this.text, this.onTabTap});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          style: isSelected ? selectedTabStyle : defaultTabStyle, 
          duration: const Duration(milliseconds: 500),
                  child: Text(
            text,
           
          ),
        ),
      ),
    );
  }
}
