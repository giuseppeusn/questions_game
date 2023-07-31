import 'package:flutter/material.dart';

main () {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é a seu animal favorito?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 1'),
            )
          ],
        ),
      ),
    );
  }
}