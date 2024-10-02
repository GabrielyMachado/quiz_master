import 'package:flutter/material.dart';
import 'package:quiz_master/src/features/home/presentation/home.dart';
import 'package:quiz_master/src/core/theme/main_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Master',
      theme: quizMasterTheme,
      home: const HomeScreen(),
    );
  }
}
