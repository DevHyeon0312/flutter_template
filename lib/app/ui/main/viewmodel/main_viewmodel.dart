import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/main/viewmodel/main_viewmodel_state.dart';
import 'package:get/get.dart';

class MainViewModel extends StateNotifier<MainViewModelState> {
  MainViewModel() : super(const MainViewModelState());

  void updateText(String text) {
    state = state.copyWith(text: text, isButtonEnabled: text.isNotEmpty);
  }

  void onButtonPressed() {
    if (state.isButtonEnabled) {
      state = state.copyWith(isButtonClicked: true);
      Get.toNamed(AppRoute.home.name);
    }
  }
}
