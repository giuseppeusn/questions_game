import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            Question(questions[_selectedQuestion]),
            const Answer("Resposta 1"),
            const Answer("Resposta 2"),
            const Answer("Resposta 3"),
          ],
        ),
      ),
    );
  }
}
class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}