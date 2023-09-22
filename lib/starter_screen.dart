import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          const MainPageText(text: 'Learn Flutter The Fun Way!'),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: null,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white, // Border color
                width: 1, // Border width
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const StyledText(text: 'Start Quiz'),
          ),
        ],
      ),
    );
  }
}
