import 'package:flutter/material.dart';

class GuaipecaSeparate extends StatelessWidget {
  final double height;
  const GuaipecaSeparate({required this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
