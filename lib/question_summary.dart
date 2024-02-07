import 'package:flutter/material.dart';
import 'package:quize_app/data/question.dart';
import 'package:quize_app/question_identifier.dart';
import 'package:quize_app/summery_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    bool getColor(String obj1, String obj2) {
      return obj1 == obj2;
    }

    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(
              itemData: data,
              isCorrect: getColor(data["user_answer"].toString(),
                  data["correct_answer"].toString()),
            );
          }).toList(),
        
        ),
      ),
    );
  }
}
