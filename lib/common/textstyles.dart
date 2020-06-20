import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  TextStyles(
      {@required this.color,
      @required this.fontSize,
      @required this.fontWeight,@required this.text,});

  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
