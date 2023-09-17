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
    final List<Map<String, Object>> questions = [
      {
        'text': 'Qual é a sua cor favorita?',
        'answer': ['Preto','Vermelho','Verde','Branco',]
      },
      {
        'text': 'Qual é a seu animal favorito?',
        'answer': ['Coelho','Cobra','Elefante','Leão',]
      },
      {
        'text': 'Qual é sua estação favorita?',
        'answer': ['Verão','Inverno','Outono','Primavera',]
      }
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]['text'].toString()),
            Answer("Resposta 1", _answer),
            Answer("Resposta 2", _answer),
            Answer("Resposta 3", _answer),
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