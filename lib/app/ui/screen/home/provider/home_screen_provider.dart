import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/screen/home/viewmodel/home_screen_viewmodel.dart';
import 'package:flutter_template/app/usecase/auth_usecase.dart';

final homeScreenProvider =
    StateNotifierProvider<HomeScreenViewModel, HomeScreenViewModelState>((ref) {
  return HomeScreenViewModel(
    AuthUseCase(),
  );
});
