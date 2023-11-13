import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(String this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 28, color: Colors.white),
    );
  }
}
