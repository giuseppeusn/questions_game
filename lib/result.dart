import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    required this.score,
    required this.onRestart,
    super.key
  });

  final int score;
  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center (
          child: Text(
            "Parabéns, você fez ${score.toString()} pontos!",
            style: const TextStyle(fontSize: 28),
          )),
        ElevatedButton(
          onPressed: onRestart,
          child: const Text('Reiniciar'),
        )
      ],
    );
  }
}