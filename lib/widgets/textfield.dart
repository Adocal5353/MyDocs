import 'package:flutter/material.dart';

class FieldForm extends StatelessWidget {
  final String hint;
  const FieldForm({Key? Key, this.hint = ''}) : super(key: Key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF3F1F1),
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFC2BDBD), fontSize: 20.0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
