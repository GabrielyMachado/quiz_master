import 'package:flutter/material.dart';
import 'package:quiz_master/src/components/primary_button.dart';
import 'package:quiz_master/src/theme/font_size.dart';
import 'package:quiz_master/src/theme/quiz_colors.dart';
import 'package:quiz_master/src/theme/quiz_padding.dart';
import 'package:quiz_master/src/utils/util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = Util.screenSize(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                QuizColors.yellow,
                QuizColors.orange,
                QuizColors.purple,
                QuizColors.blue,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(QuizPadding.large),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: QuizPadding.large),
                  child: Image.asset(
                    'assets/3.png',
                    height: screenSize.height * .25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.23),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: QuizPadding.large),
                        child: Text(
                          'Qual é o nível do desafio de hoje?',
                          style: TextStyle(
                            fontSize: QuizFontSize.medium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      PrimaryButton(
                        label: 'Fácil',
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          QuizPadding.large,
                        ),
                        child: PrimaryButton(
                          label: 'Médio',
                          onTap: () {},
                        ),
                      ),
                      PrimaryButton(
                        label: 'Difícil',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
