import 'package:flutter/material.dart';

class TextStyler extends StatelessWidget {
  const TextStyler(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontFamily: AutofillHints.birthdayYear,
          fontSize: 30),
    );
  }
}