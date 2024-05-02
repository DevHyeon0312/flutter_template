import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/data/model/component.dart';
import 'package:flutter_template/app/usecase/component_usecase.dart';

class BasicComponentViewModel
    extends StateNotifier<BasicComponentViewModelState> {
  BasicComponentViewModel(this.componentUseCase)
      : super(const BasicComponentViewModelState());

  final ComponentUseCase componentUseCase;

  void getBasicComponents(String searchText) async {
    final components =
        await componentUseCase.getBasicComponents(searchText: searchText);
    state = state.copyWith(components: components, lastSearchText: searchText);
  }
}

@immutable
class BasicComponentViewModelState {
  final List<Component> components;
  final String lastSearchText;

  const BasicComponentViewModelState({
    this.components = const [],
    this.lastSearchText = '',
  });

  BasicComponentViewModelState copyWith({
    List<Component>? components,
    String? lastSearchText,
  }) {
    return BasicComponentViewModelState(
      components: components ?? this.components,
      lastSearchText: lastSearchText ?? this.lastSearchText,
    );
  }
}
