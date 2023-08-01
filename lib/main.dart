import 'package:flutter/material.dart';

main () {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

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
            Text(questions[_selectedQuestion]),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Resposta 3'),
            )
          ],
        ),
      ),
    );
  }
}
class QuestionApp extends StatefulWidget {

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}