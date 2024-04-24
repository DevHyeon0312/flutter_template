import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/page/screen_home/viewmodel/home_page_viewmodel.dart';
import 'package:flutter_template/app/usecase/auth_usecase.dart';

final homePageProvider =
    StateNotifierProvider<HomePageViewModel, HomePageViewModelState>((ref) {
  return HomePageViewModel(
    AuthUseCase(),
  );
});
