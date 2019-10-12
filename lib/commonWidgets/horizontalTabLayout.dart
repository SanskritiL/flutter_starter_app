import 'package:flutter/material.dart';
import 'package:playing_with_flutter/styleguide/colors.dart';
import '../styleguide/text_style.dart';
import '../commonWidgets/tab_text.dart';
import '../model/Type.dart';
import '../commonWidgets/types_card.dart';

class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
 
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -10,
            bottom: 0,
            top: 0,
            
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TabText(
                    text: "FramBam",
                    isSelected: selectedTabIndex==0,
                    onTabTap: () {onTabTap(0);},
                  ),
                  TabText(
                    text: "Readings",
                    isSelected: selectedTabIndex == 1,
                    onTabTap:  () {onTabTap(1);},
                  ),
                  TabText(
                    text: "YourSpace",
                    isSelected: selectedTabIndex == 2,
                    onTabTap:  () {onTabTap(2);},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65),
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TypeCard(type: moodBalance ),
                TypeCard(type: workOut ),
                TypeCard(type: gutFeeding ),

              ],
            ),
          )
        ],
      ),
    );
  
  }

   onTabTap(int index) {
    setState(() {
     selectedTabIndex = index;
  });
  }
}
