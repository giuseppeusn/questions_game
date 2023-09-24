import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
    {
      required this.questions,
      required this.selectedQuestion,
      required this.answers,
      required this.onAnswer,
      super.key
    }
  );

  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final List answers;
  final void Function() onAnswer;


  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Question(questions[selectedQuestion]['text'] as String),
        ...answers.map((text) => Answer(text, onAnswer)).toList()
      ]
    );
  }
}