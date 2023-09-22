import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 105, 55, 120),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 250,
              ),
              const SizedBox(
                height: 60,
              ),
              const MainPageText(text: 'Learn Flutter the fun way!'),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: null,
                style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(
                      color: Colors.white, // Border color
                      width: 2, // Border width
                    ),
                  ),
                ),
                child: const StyledText(text: 'Start Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
