import 'package:flutter/material.dart';

class GuaipecaLargeButton extends StatefulWidget {
  String label;
  GuaipecaLargeButton({required this.label, Key? key}) : super(key: key);

  @override
  State<GuaipecaLargeButton> createState() => _GuaipecaLargeButtonState();
}

class _GuaipecaLargeButtonState extends State<GuaipecaLargeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        elevation: 8,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                widget.label,
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
