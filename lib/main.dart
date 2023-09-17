import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main () => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'text': 'Qual é a sua cor favorita?',
        'answer': ['Preto','Vermelho','Verde','Branco']
      },
      {
        'text': 'Qual é a seu animal favorito?',
        'answer': ['Coelho','Cobra','Elefante','Leão']
      },
      {
        'text': 'Qual é sua estação favorita?',
        'answer': ['Verão','Inverno','Outono','Primavera']
      }
    ];

    List<String> answers = questions[_selectedQuestion]['answer'] as List<String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]['text'] as String),
            ...answers.map((text) => Answer(text, _answer)).toList()
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