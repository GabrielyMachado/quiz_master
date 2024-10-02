import 'package:flutter/material.dart';
import 'package:quiz_master/src/core/theme/quiz_colors.dart';

ThemeData quizMasterTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: QuizColors.yellow,
    primaryContainer: QuizColors.yellowSoft,
    secondary: QuizColors.orange,
    secondaryContainer: QuizColors.orangeSoft,
    surface: QuizColors.white,
    onPrimary: QuizColors.grayDark,
    onSecondary: QuizColors.white,
    //onSurface: QuizColors.grayDark,
    onSurface: QuizColors.white,
    error: QuizColors.red,
    onError: QuizColors.white,
    tertiary: QuizColors.green,
    onTertiary: QuizColors.white,
    outline: QuizColors.grayMedium,
  ),
  fontFamily: 'Poppins',
  // textTheme: const TextTheme(
  //   headlineLarge: TextStyle(
  //     fontSize: 24,
  //     fontWeight: FontWeight.bold,
  //     color: QuizColors.grayDark,
  //   ),
  //   bodyMedium: TextStyle(
  //     fontSize: 16,
  //     fontWeight: FontWeight.normal,
  //     color: QuizColors.grayMedium,
  //   ),
  // ),
);
