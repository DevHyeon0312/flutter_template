enum AppRoute {
  main(name: '/', canPop: false),
  detailBasicSearchTextField(name: '/basic_search_text_field', canPop: true),
  ;

  const AppRoute({required this.name, required this.canPop});

  final String name;
  final bool canPop;
}
