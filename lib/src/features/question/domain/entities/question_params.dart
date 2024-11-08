import 'package:quiz_master/src/shared/domain/question_categories.dart';
import 'package:quiz_master/src/shared/domain/question_difficulty.dart';

class QuestionParams {
  final List<QuestionCategory> category;
  final QuestionDifficulty difficulty;

  QuestionParams({
    required this.category,
    required this.difficulty,
  });
}
