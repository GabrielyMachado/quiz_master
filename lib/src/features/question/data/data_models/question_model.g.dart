// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      category: json['category'] as String,
      id: json['id'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      difficulty: json['difficulty'] as String,
      regions:
          (json['regions'] as List<dynamic>).map((e) => e as String).toList(),
      isNiche: json['isNiche'] as bool,
      question:
          SourceQuestion.fromJson(json['question'] as Map<String, dynamic>),
      correctAnswer: json['correctAnswer'] as String,
      incorrectAnswers: (json['incorrectAnswers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'id': instance.id,
      'tags': instance.tags,
      'difficulty': instance.difficulty,
      'regions': instance.regions,
      'isNiche': instance.isNiche,
      'question': instance.question.toJson(),
      'correctAnswer': instance.correctAnswer,
      'incorrectAnswers': instance.incorrectAnswers,
      'type': instance.type,
    };
