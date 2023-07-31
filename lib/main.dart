import 'package:flutter/material.dart';

main () {
  runApp(QuestionApp());
}

class QuestionAppState extends State<QuestionApp> {
  var selectedQuestion = 0;

  void answer() {
    setState(() {
      selectedQuestion++;
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
            Text(questions[selectedQuestion]),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: answer,
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
  QuestionAppState createState() {
    return QuestionAppState();
  }
}