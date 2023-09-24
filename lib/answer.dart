import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onPressing, {super.key});

  final String text;
  final void Function() onPressing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressing,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
        child: Text(text),
      ),
    );
}
}