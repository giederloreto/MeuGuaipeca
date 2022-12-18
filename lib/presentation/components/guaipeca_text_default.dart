import 'package:flutter/material.dart';

class GuaipecaTextDefault extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? padding;
  const GuaipecaTextDefault({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color,
    this.textAlign,
    this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Quicksand',
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
