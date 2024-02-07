import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';

int getListNum() {
  Random random = new Random();
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

var question = questions[getListNum()];
