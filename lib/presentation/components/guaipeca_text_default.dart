import 'package:flutter/material.dart';

class GuaipecaTextDefault extends StatelessWidget {
  final String text;
  final double? fontSize; 
  const GuaipecaTextDefault({Key? key, required this.text, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
