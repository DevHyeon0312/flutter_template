import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/screen/basic_component/viewmodel/basic_component_viewmodel.dart';
import 'package:flutter_template/app/usecase/component_usecase.dart';

final basicComponentProvider = StateNotifierProvider<BasicComponentViewModel,
    BasicComponentViewModelState>((ref) {
  return BasicComponentViewModel(
    ComponentUseCase(),
  );
});
