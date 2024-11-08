import 'dart:convert';
import 'dart:developer';

import 'package:quiz_master/src/features/question/data/data_models/question_model.dart';
import 'package:quiz_master/src/features/question/data/data_sources/questions_api.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_master/src/features/question/domain/entities/question_params.dart';
import 'package:quiz_master/src/shared/domain/question_categories.dart';

class QuestionsImplApi extends QuestionsApi {
  @override
  Future<List<QuestionModel>> getQuestionsSet(QuestionParams params) async {
    final url = Uri.https(
      'the-trivia-api.com',
      '/question',
      _orderParameters(params),
    );
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {}
    } catch (e, s) {
      log(
        'Error fetching questions data',
        name: 'question_fetch',
        error: e,
        stackTrace: s,
      );
    }
  }

  Map<String, String> _orderParameters(QuestionParams params) {
    Map<String, String> queryParams = {'difficulty': params.difficulty.name};

    if (!params.category.contains(QuestionCategory.random)) {
      queryParams.addAll({'categories': params.category.join(',')});
    }
    return queryParams;
  }
}
