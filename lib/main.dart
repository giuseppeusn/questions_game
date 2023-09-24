import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main () => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  final _questions = const [
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

  bool get hasQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  void _answer() {
    if (hasQuestionSelected) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    List<String> answers = hasQuestionSelected
      ? _questions[_selectedQuestion]['answer'] as List<String>
      : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: hasQuestionSelected ? Column(
          children: [
            Question(_questions[_selectedQuestion]['text'] as String),
            ...answers.map((text) => Answer(text, _answer)).toList()
          ],
        ) : const Center (
          child: Text(
            'Formulário respondido!',
            style: TextStyle(fontSize: 28),
          ),
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