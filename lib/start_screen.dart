import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assests/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(131, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Quiz app",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: switchScreen,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start quiz",
              ))
        ],
      ),
    );
  }
}
