import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
                (data) {
              bool isCorrect = data['user_answer'] == data['correct_answer'];
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                        isCorrect ? Colors.greenAccent : Colors.red,
                        radius: 16.0,
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: GoogleFonts.inter(
                            color: Colors.black45,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              style: GoogleFonts.inter(
                                color: Colors.white54,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['user_answer'] as String,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.inter(
                                color: Colors.white30,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              data['correct_answer'] as String,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.inter(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10, // Adjust the height for spacing between questions
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
