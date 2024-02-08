import 'dart:math';
import 'package:quize_app/data/questions.dart';

class QuizService {
  static final QuizService _quizService = QuizService._internal();
  factory QuizService() {
    return _quizService;
  }
  QuizService._internal();
  
  int getListNum() {
    Random random = Random();
    int randomNumber = random.nextInt(300) + 1;
    int res = 0;
    if (randomNumber <= 100) {
      res = 0;
    } else if (randomNumber > 100 && randomNumber <= 200) {
      res = 1;
    } else {
      res = 2;
    }
    return res;
  }

  var question;
  void updateQuestion() {
    question = questions[getListNum()];
  }
}
