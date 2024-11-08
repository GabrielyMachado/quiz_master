import 'package:json_annotation/json_annotation.dart';

part 'source_question.g.dart';

@JsonSerializable()
class SourceQuestion {
  final String text;

  SourceQuestion({required this.text});

  factory SourceQuestion.fromJson(Map<String, dynamic> json) =>
      _$SourceQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$SourceQuestionToJson(this);
}
