import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/main/main_page.dart';
import 'package:flutter_template/app/ui/page/screen_home/home_page.dart';
import 'package:flutter_template/util/platform_util.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: AppRoute.initial.name,
      page: () => const MainPage(),
      popGesture: AppRoute.initial.canPop,
    ),
    GetPage(
      name: AppRoute.home.name,
      page: () => const HomePage(),
      popGesture: AppRoute.home.canPop,
      transition: _getTransition(),
      transitionDuration: _getTransitionDuration(),
    ),
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
