import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/page/detail_animation_cross_fade_1/detail_animation_cross_fade_1_page.dart';
import 'package:flutter_template/app/ui/page/detail_basic_search_text_field/detail_basic_search_text_field_page.dart';
import 'package:flutter_template/app/ui/page/main/main_page.dart';
import 'package:flutter_template/util/platform_util.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: AppRoute.main.name,
      page: () => const MainPage(),
      popGesture: AppRoute.main.canPop,
    ),
    GetPage(
      name: AppRoute.detailBasicSearchTextField.name,
      page: () => const DetailBasicSearchTextFieldPage(),
      popGesture: AppRoute.detailBasicSearchTextField.canPop,
      transition: _getTransition(),
      transitionDuration: _getTransitionDuration(),
    ),
    GetPage(
      name: AppRoute.detailAnimationCrossFade1.name,
      page: () => const DetailAnimationCrossFade1Page(),
      popGesture: AppRoute.detailAnimationCrossFade1.canPop,
      transition: _getTransition(),
      transitionDuration: _getTransitionDuration(),
    )
  ];

  static Transition? _getTransition() {
    if (PlatformUtil.isAndroid()) {
      return Transition.rightToLeft;
    } else {
      return null;
    }
  }

  static Duration? _getTransitionDuration() {
    if (PlatformUtil.isAndroid()) {
      return const Duration(milliseconds: 200);
    } else {
      return null;
    }
  }
}
