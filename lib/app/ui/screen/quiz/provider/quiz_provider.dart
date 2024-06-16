import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/screen/quiz/viewmodel/quiz_viewmodel.dart';
import 'package:flutter_template/app/usecase/quiz_usecase.dart';

final quizProvider = StateNotifierProvider<
    QuizViewModel, QuizViewModelState>((ref) {
  return QuizViewModel(
    QuizUseCase(),
  );
});
