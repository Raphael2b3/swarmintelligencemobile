import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Color(0xFF000000);

  static const Color red = Color.fromARGB(255, 126, 40, 40);

  static const Color green = Color.fromARGB(255, 100, 151, 59);

  static const Color highlightdark = Color.fromRGBO(46, 46, 46, 1);

  static const Color backgroundark = Color.fromARGB(255, 17, 17, 17);

  static const Color primaryText = Color.fromARGB(255, 204, 212, 218);

  static const Color secondary = Color.fromARGB(255, 110, 110, 110);
}

class TextStyles {
  static const TextStyle tag = TextStyle(
    color: AppColors.primaryText,
    fontSize: 15,
  );

  static const TextStyle header = TextStyle(
    color: AppColors.primaryText,
    fontSize: 24,
  );

  static const TextStyle highlighted = TextStyle(
    color: AppColors.primaryText,
    fontSize: 20,
  );

  static const TextStyle hintText = TextStyle(
    color: AppColors.secondary,
    fontSize: 15,
  );
}
