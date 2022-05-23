import 'package:flutter/material.dart';

class ImageTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String path;
  final double imageHeight;
  final double radius;
  final Widget text;

  ImageTextButton({
    required this.onPressed,
    required this.path,
    required this.text,
    this.imageHeight = 50,
    this.radius = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      /* shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)), */
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(path),
            ),
            const SizedBox(height: 6),
            text,
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
