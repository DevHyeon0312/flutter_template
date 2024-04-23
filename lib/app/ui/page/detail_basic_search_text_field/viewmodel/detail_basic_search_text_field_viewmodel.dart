import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailBasicSearchTextFieldViewModel
    extends StateNotifier<DetailBasicSearchTextFieldViewModelState> {
  DetailBasicSearchTextFieldViewModel()
      : super(
          DetailBasicSearchTextFieldViewModelState(
            debounceDuration: 200,
            horizontalPadding: 20,
            borderRadius: 30,
            borderColor: Colors.grey.withOpacity(0.5),
            hintText: 'Search..',
            searchResult: '',
          ),
        );

  void updateDebounceDuration(int debounceDuration) {
    state = state.copyWith(debounceDuration: debounceDuration);
  }

  void updateHorizontalPadding(double horizontalPadding) {
    state = state.copyWith(horizontalPadding: horizontalPadding);
  }

  void updateBorderRadius(double borderRadius) {
    state = state.copyWith(borderRadius: borderRadius);
  }

  void updateBorderColor(Color borderColor) {
    state = state.copyWith(borderColor: borderColor);
  }

  void updateHintText(String hintText) {
    state = state.copyWith(hintText: hintText);
  }

  void updateSearchResult(String searchResult) {
    state = state.copyWith(searchResult: searchResult);
  }
}

@immutable
class DetailBasicSearchTextFieldViewModelState {
  final int debounceDuration;
  final double horizontalPadding;
  final double borderRadius;
  final Color borderColor;
  final String hintText;
  final String? searchResult;

  const DetailBasicSearchTextFieldViewModelState({
    required this.debounceDuration,
    required this.horizontalPadding,
    required this.borderRadius,
    required this.borderColor,
    required this.hintText,
    required this.searchResult,
  });

  DetailBasicSearchTextFieldViewModelState copyWith({
    int? debounceDuration,
    double? horizontalPadding,
    double? borderRadius,
    Color? borderColor,
    String? hintText,
    String? searchResult,
  }) {
    return DetailBasicSearchTextFieldViewModelState(
      debounceDuration: debounceDuration ?? this.debounceDuration,
      horizontalPadding: horizontalPadding ?? this.horizontalPadding,
      borderRadius: borderRadius ?? this.borderRadius,
      borderColor: borderColor ?? this.borderColor,
      hintText: hintText ?? this.hintText,
      searchResult: searchResult ?? this.searchResult,
    );
  }
}
