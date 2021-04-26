import 'package:FlutterQuiz/challenge/widget/next_button_widget.dart';
import 'package:FlutterQuiz/challenge/widget/quest_indicator_widget.dart';
import 'package:FlutterQuiz/challenge/widget/quiz_widget.dart';
import 'package:FlutterQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestIndicatorWidget(),
        ),
      ),
      body: QuizWidget(
        title: "Lorem ipsum dolor sit amet.",
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget(
                label: "Pular",
                backgroundColor: AppColors.white,
                fontColor: AppColors.grey,
                onTap: () {},
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: NextButtonWidget(
                label: "Confirmar",
                backgroundColor: AppColors.darkGreen,
                fontColor: AppColors.white,
                onTap: () {},
              )),
            ],
          ),
        ),
      ),
    );
  }
}
