import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/data/model/quiz.dart';
import 'package:flutter_template/app/usecase/quiz_usecase.dart';

class QuizViewModel
    extends StateNotifier<QuizViewModelState> {
  QuizViewModel(this.quizUseCase)
      : super(const QuizViewModelState());

  final QuizUseCase quizUseCase;

  void getAnimationQuizList() async {
    List<Quiz> quizList = await quizUseCase.getQuizList();
    state = state.copyWith(quizList: quizList,);
  }
}

@immutable
class QuizViewModelState {
  final List<Quiz> quizList;

  const QuizViewModelState({
    this.quizList = const [],
  });

  QuizViewModelState copyWith({
    List<Quiz>? quizList,
  }) {
    return QuizViewModelState(
      quizList: quizList ?? this.quizList,
    );
  }
}
