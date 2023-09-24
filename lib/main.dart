import 'package:flutter/material.dart';
import 'package:questions_game/quiz.dart';
import './result.dart';

void main () => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var totalScore = 0;

  final _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answer': [
        {'text': 'Preto', 'points': 10},
        {'text': 'Vermelho', 'points': 5},
        {'text': 'Verde', 'points': 3},
        {'text': 'Branco', 'points': 1}
      ]
    },
    {
      'text': 'Qual é a seu animal favorito?',
      'answer': [
        {'text': 'Coelho', 'points': 10},
        {'text': 'Cobra', 'points': 5},
        {'text': 'Elefante', 'points': 3},
        {'text': 'Leão', 'points': 1}
      ]
    },
    {
      'text': 'Qual é sua estação favorita?',
      'answer': [
        {'text': 'Verão', 'points': 10},
        {'text': 'Outono', 'points': 5},
        {'text': 'Inverno', 'points': 3},
        {'text': 'Primavera', 'points': 1}
      ]
    }
  ];

  bool get hasQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  void _answer(int score) {
    if (hasQuestionSelected) {
      setState(() {
        _selectedQuestion++;
        totalScore += score;
      });
    }
  }

  void _restart() {
    setState(() {
      _selectedQuestion = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: hasQuestionSelected 
        ? Quiz(
            questions: _questions,
            selectedQuestion: _selectedQuestion,
            onAnswer: _answer
          )
        : Result(score: totalScore, onRestart: _restart)
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