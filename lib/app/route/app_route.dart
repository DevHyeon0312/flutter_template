import 'package:flutter_template/app/ui/component/animation_cross_fade_1/animation_cross_fade_1.dart';
import 'package:flutter_template/util/file_util.dart';

enum AppRoute {
  main(
    name: '/',
    canPop: false,
    filePath: 'flutter_template/lib/app/ui/page/main/main_page.dart',
  ),
  detailBasicSearchTextField(
    name: '/basic_search_text_field',
    canPop: true,
    filePath: '/lib/app/ui/component/text_field/basic_search_text_field.dart',
  ),
  detailAnimationCrossFade1(
      name: '/animation_cross_fade_1',
      canPop: true,
      filePath:
          '/lib/app/ui/component/animation_cross_fade_1/animation_cross_fade_1.dart');

  const AppRoute(
      {required this.name, required this.canPop, required this.filePath});

  final String name;
  final bool canPop;
  final String filePath;
}
