import 'package:flutter/material.dart';
import 'package:quize_app/data/question.dart';
import 'package:quize_app/question_summary.dart';
import 'package:quize_app/quiz.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.answers, required this.onRestart});
  final List<String> answers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < answers.length; i++) {
      summary.add({
        "question_index": i,
        "question": sr.question[i].text,
        "correct_answer": sr.question[i].answers[0],
        "user_answer": answers[i]
      });
    }
    return summary;
  }

  QuizService sr = QuizService();
// Text(((data['question_index'] as int) + 1).toString()),
  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = sr.question.length;
    final numCorrectQuestion = summaryData.where((item) {
      return item['user_answer'] == item['correct_answer'];
    }).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numCorrectQuestion out of $numTotalQuestion Question correctly',
              style: const TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 207, 96, 226)),
              icon: const Icon(Icons.restart_alt),
              label: const Text("Restart quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
