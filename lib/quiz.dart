import 'package:flutter/material.dart';
import 'package:quize_app/data/question.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/result_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start_screen";
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == question.length) {
      setState(() {
        activeScreen = "result_screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = "start_screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 40, 1, 84),
              Color.fromARGB(255, 139, 76, 211)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: activeScreen == "start_screen"
                ? StartScreen(switchScreen)
                : activeScreen == "result_screen"
                    ? ResultScreen(
                        answers: selectedAnswers,
                        onRestart: restartQuiz,
                      )
                    : QuestionsScreen(onSelectAnswer: chooseAnswer),
          ),
        ),
      ),
    );
  }
}
