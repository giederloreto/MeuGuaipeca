import 'package:flutter/material.dart';

class GuaipecaTextFormField extends StatefulWidget {
  String label;

  GuaipecaTextFormField({required this.label, Key? key}) : super(key: key);

  @override
  State<GuaipecaTextFormField> createState() => _GuaipecaTextFormFieldState();
}

class _GuaipecaTextFormFieldState extends State<GuaipecaTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(
          widget.label,
          style: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
