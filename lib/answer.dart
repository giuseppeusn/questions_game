import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(text),
    );
}
}