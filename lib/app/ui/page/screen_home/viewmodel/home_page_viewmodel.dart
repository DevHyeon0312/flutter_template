import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/data/model/user.dart';
import 'package:flutter_template/app/usecase/auth_usecase.dart';
import 'package:flutter_template/util/debug_log.dart';

class HomePageViewModel extends StateNotifier<HomePageViewModelState> {
  HomePageViewModel(this.authUseCase) : super(const HomePageViewModelState());

  final AuthUseCase authUseCase;

  //TODO 로컬에서 로그인에 대한 정보를 가져오는 로직 필요

  //TODO 로그인페이지 만들어서 이동 예정
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

  //TODO 로그인페이지 만들어서 이동 예정
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
class HomePageViewModelState {
  final User? user;
  final bool isLogin;

  const HomePageViewModelState({
    this.user,
    this.isLogin = false,
  });

  HomePageViewModelState copyWith({
    User? user,
  }) {
    return HomePageViewModelState(
      user: user ?? this.user,
    );
  }
}
