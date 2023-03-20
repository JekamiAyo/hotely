import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final Color color;
  final String text;
  final Color bordercolor;
  final Color textColor;
  final Color boxShadowColor;
  const MyTabBar({
    Key? key, required this.color, required this.text, required this.bordercolor, required this.textColor, required this.boxShadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
        border: Border.all(color: bordercolor),
        // boxShadow: [BoxShadow(color: boxShadowColor,
        // blurRadius: 1,
        // spreadRadius: 1,
        // )],
      ),
      child: Center(child: Text(text, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.5, color: textColor),)),
    );
  }
}

