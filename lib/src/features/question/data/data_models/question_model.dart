import 'package:json_annotation/json_annotation.dart';
import 'package:quiz_master/src/features/question/data/data_models/source_question.dart';
part 'question_model.g.dart';

@JsonSerializable(explicitToJson: true)
class QuestionModel {
  final String category;
  final String id;
  final List<String> tags;
  final String difficulty;
  final List<String> regions;
  final bool isNiche;
  final SourceQuestion question;
  final String correctAnswer;
  final List<String> incorrectAnswers;
  final String type;

  QuestionModel({
    required this.category,
    required this.id,
    required this.tags,
    required this.difficulty,
    required this.regions,
    required this.isNiche,
    required this.question,
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.type,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
