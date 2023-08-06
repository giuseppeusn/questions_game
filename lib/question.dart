import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.text, {super.key});

  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}