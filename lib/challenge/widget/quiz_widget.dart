import 'package:FlutterQuiz/challenge/widget/awnser_widget.dart';
import 'package:FlutterQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
            isRight: false,
            isSelected: true,
            title:
                "Lorem ipsum dolor sit amet, consectetur adipisci consectetur adipisci?",
          ),
          AwnserWidget(
            isRight: true,
            isSelected: true,
            title:
                "Lorem ipsum dolor sit amet, consectetur adipisci consectetur adipisci?",
          ),
          AwnserWidget(
            title:
                "Lorem ipsum dolor sit amet, consectetur adipisci consectetur adipisci?",
          ),
          AwnserWidget(
            title:
                "Lorem ipsum dolor sit amet, consectetur adipisci consectetur adipisci?",
          ),
        ],
      ),
    );
  }
}
