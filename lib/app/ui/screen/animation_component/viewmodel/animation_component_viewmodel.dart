import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/data/model/component.dart';
import 'package:flutter_template/app/usecase/component_usecase.dart';

class AnimationComponentViewModel
    extends StateNotifier<AnimationComponentViewModelState> {
  AnimationComponentViewModel(this.componentUseCase)
      : super(const AnimationComponentViewModelState());

  final ComponentUseCase componentUseCase;

  void getAnimationComponents(String searchText) async {
    final components =
        await componentUseCase.getAnimationComponents(searchText: searchText);
    state = state.copyWith(components: components, lastSearchText: searchText);
  }
}

@immutable
class AnimationComponentViewModelState {
  final List<Component> components;
  final String lastSearchText;

  const AnimationComponentViewModelState({
    this.components = const [],
    this.lastSearchText = '',
  });

  AnimationComponentViewModelState copyWith({
    List<Component>? components,
    String? lastSearchText,
  }) {
    return AnimationComponentViewModelState(
      components: components ?? this.components,
      lastSearchText: lastSearchText ?? this.lastSearchText,
    );
  }
}
