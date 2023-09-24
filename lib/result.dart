import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    required this.score,
    super.key
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    return Center (
      child: Text(
        "Parabéns, você fez ${score.toString()} pontos!",
        style: const TextStyle(fontSize: 28),
      ));
  }
}