import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsStateScreen();
  }
}

class _QuestionsStateScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('Questions Screen');
  }
}
