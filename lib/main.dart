import 'package:flutter/material.dart';
import 'package:questions_game/quiz.dart';
import './result.dart';

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
        body: hasQuestionSelected 
        ? Quiz(
            questions: _questions,
            selectedQuestion: _selectedQuestion,
            answers: answers, 
            onAnswer: _answer
          )
        : const Result()
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