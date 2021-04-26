import 'package:FlutterQuiz/core/app_images.dart';
import 'package:FlutterQuiz/home/home_repository.dart';
import 'package:FlutterQuiz/home/home_state.dart';
import 'package:FlutterQuiz/shared/model/questions_model.dart';
import 'package:FlutterQuiz/shared/model/quiz_model.dart';
import 'package:FlutterQuiz/shared/model/user_model.dart';
import 'package:FlutterQuiz/shared/model/wanser_mode.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
