import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
    {
      required this.questions,
      required this.selectedQuestion,
      required this.onAnswer,
      super.key
    }
  );

  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) onAnswer;

  bool get hasQuestionSelected {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasQuestionSelected
      ? questions[selectedQuestion]['answer'] as List<Map<String, Object>>
      : [];

    return Column (
      children: [
        Question(questions[selectedQuestion]['text'] as String),
        ...answers
          .map((resp) => Answer(
            resp['text'] as String,
            () => onAnswer(int.parse(resp['points'].toString()))
          ))
          .toList()
      ]
    );
  }
}