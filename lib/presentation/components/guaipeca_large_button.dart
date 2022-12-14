import 'package:flutter/material.dart';

class GuaipecaLargeButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Color? color;
  const GuaipecaLargeButton(
      {required this.label, this.onTap, this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        color: color,
        elevation: 8,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                label,
                style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
