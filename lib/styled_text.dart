import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 18,
        color: const Color.fromARGB(255, 237, 223, 252),
      ),
    );
  }
}

class MainPageText extends StatelessWidget {
  const MainPageText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: const Color.fromARGB(255, 237, 223, 252),
      ),
    );
  }
}
