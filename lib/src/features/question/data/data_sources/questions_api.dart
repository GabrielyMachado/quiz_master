import 'package:quiz_master/src/features/question/domain/entities/question.dart';

abstract class QuestionsApi {
  Future<List<Question>> getQuestionsSet();
}
