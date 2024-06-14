enum AppRoute {
  main(
    name: '/',
    canPop: false,
  ),
  detailBasicSearchTextField(
    name: '/basic_search_text_field',
    canPop: true,
  ),
  detailAnimationCrossFade1(
      name: '/animation_cross_fade_1',
      canPop: true,
  ),
  detailAnimationWriteText(
    name: '/animation_write_text',
    canPop: true,
  );

  const AppRoute({required this.name, required this.canPop,});

  final String name;
  final bool canPop;
}
