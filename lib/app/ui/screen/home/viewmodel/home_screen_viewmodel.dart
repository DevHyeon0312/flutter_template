import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/data/model/user.dart';
import 'package:flutter_template/app/usecase/auth_usecase.dart';
import 'package:flutter_template/util/debug_log.dart';

class HomeScreenViewModel extends StateNotifier<HomeScreenViewModelState> {
  HomeScreenViewModel(this.authUseCase)
      : super(const HomeScreenViewModelState());

  final AuthUseCase authUseCase;

  void signOut() async {
    await authUseCase.signOut().then((_) {
      state = state.copyWith(user: null);
    }).onError((error, stackTrace) {
      //TODO 로그아웃 실패에 대한 처리
      DebugLog.e(
        'signOut completed with error',
        error: error,
        stackTrace: stackTrace,
      );
    });
  }

  void signInWithGoogle() async {
    await authUseCase.signInWithGoogle().then((value) {
      state = state.copyWith(user: value);
    }).onError((error, stackTrace) {
      //TODO 로그인 실패에 대한 처리
      DebugLog.e(
        'signInWithGoogle completed with error',
        error: error,
        stackTrace: stackTrace,
      );
    });
  }
}

@immutable
class HomeScreenViewModelState {
  final User? user;
  final bool isLogin;

  const HomeScreenViewModelState({
    this.user,
    this.isLogin = false,
  });

  HomeScreenViewModelState copyWith({
    User? user,
  }) {
    return HomeScreenViewModelState(
      user: user ?? this.user,
    );
  }
}
