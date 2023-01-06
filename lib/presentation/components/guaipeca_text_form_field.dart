import 'package:flutter/material.dart';

class GuaipecaTextFormField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;

  const GuaipecaTextFormField(
      {required this.label,
      this.controller,
      this.minLines,
      this.maxLines,
      this.keyboardType,
      Key? key})
      : super(key: key);

  @override
  State<GuaipecaTextFormField> createState() => _GuaipecaTextFormFieldState();
}

class _GuaipecaTextFormFieldState extends State<GuaipecaTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
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
