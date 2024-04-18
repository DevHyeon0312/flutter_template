import 'package:flutter/material.dart';

@immutable
class MainViewModelState {
  final String text;
  final bool isButtonEnabled;
  final bool isButtonClicked;

  const MainViewModelState({
    this.text = '',
    this.isButtonEnabled = false,
    this.isButtonClicked = false,
  });

  MainViewModelState copyWith({
    String? text,
    bool? isButtonEnabled,
    bool? isButtonClicked,
  }) {
    return MainViewModelState(
      text: text ?? this.text,
      isButtonEnabled: isButtonEnabled ?? this.isButtonEnabled,
      isButtonClicked: isButtonClicked ?? this.isButtonClicked,
    );
  }
}
