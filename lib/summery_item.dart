import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quize_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
      {super.key, required this.itemData, required this.isCorrect});
  final Map<String, Object> itemData;
  final bool isCorrect;

  @override
  Widget build(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrect: isCorrect,
            index: (itemData['question_index'] as int) + 1),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.lato(
                    color: isCorrect
                        ? const Color.fromARGB(255, 0, 252, 42)
                        : const Color.fromARGB(255, 251, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
