import 'package:flutter/material.dart';
import 'package:quiz_master/src/core/theme/font_size.dart';
import 'package:quiz_master/src/core/theme/quiz_colors.dart';
import 'package:quiz_master/src/core/utils/util.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? labelColor;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
    this.backgroundColor,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Util.screenSize(context).width * 0.7,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          side: const WidgetStatePropertyAll(
            BorderSide(color: QuizColors.yellowDark, width: 3),
          ),
          backgroundColor: WidgetStatePropertyAll(
            backgroundColor ?? QuizColors.yellow,
          ),
          elevation: const WidgetStatePropertyAll(24),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(
            color: labelColor ?? QuizColors.purple,
            fontWeight: FontWeight.bold,
            fontSize: QuizFontSize.medium,
          ),
        ),
      ),
    );
  }
}
