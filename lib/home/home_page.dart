import 'package:FlutterQuiz/challenge/widget/quiz_widget.dart';
import 'package:FlutterQuiz/core/app_colors.dart';
import 'package:FlutterQuiz/home/home_controller.dart';
import 'package:FlutterQuiz/home/home_state.dart';
import 'package:FlutterQuiz/home/widgets/appbar_widget.dart';
import 'package:FlutterQuiz/home/widgets/level_button_widget.dart';
import 'package:FlutterQuiz/home/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.sucess) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LevelButomWidget(
                    label: "Fácil",
                  ),
                  LevelButomWidget(
                    label: "Médio",
                  ),
                  LevelButomWidget(
                    label: "Difícil",
                  ),
                  LevelButomWidget(
                    label: "Perito",
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizzes!
                      .map((e) => QuizCardWidget(
                            title: e.title,
                            completed:
                                "${e.questionsAnswered}/${e.questions.length}",
                            percent: e.questionsAnswered / e.questions.length,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
