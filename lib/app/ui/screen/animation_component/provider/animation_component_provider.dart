import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/screen/animation_component/viewmodel/animation_component_viewmodel.dart';
import 'package:flutter_template/app/usecase/component_usecase.dart';

final animationComponentProvider = StateNotifierProvider<
    AnimationComponentViewModel, AnimationComponentViewModelState>((ref) {
  return AnimationComponentViewModel(
    ComponentUseCase(),
  );
});
