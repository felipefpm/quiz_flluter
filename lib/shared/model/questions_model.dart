import 'dart:convert';

import 'package:FlutterQuiz/shared/model/wanser_mode.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnser;

  QuestionModel({
    required this.title,
    required this.awnser,
  }) : assert(awnser.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnser': awnser.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awnser: List<AwnserModel>.from(
          map['awnser']?.map((x) => AwnserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}
