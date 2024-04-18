import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/main/viewmodel/main_viewmodel.dart';
import 'package:flutter_template/app/ui/main/viewmodel/main_viewmodel_state.dart';

final mainPageViewModelProvider =
    StateNotifierProvider<MainViewModel, MainViewModelState>((ref) {
  return MainViewModel();
});
